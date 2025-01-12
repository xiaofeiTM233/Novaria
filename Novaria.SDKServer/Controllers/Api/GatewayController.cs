using Microsoft.AspNetCore.Mvc;
using Novaria.Common.Crypto;
using System.Text.Json.Nodes;
using System.Text.Json.Serialization;
using System.Text.Json;
using System.Text;
using Serilog;
using Novaria.Common.Utils;
using System.IO;
using System.Numerics;
using System.Security.Cryptography;
using Microsoft.AspNetCore.Http;
using Novaria.Common.Core;
using Proto;
using Google.Protobuf;
using System.Collections;
using System.Reflection;
using System.Net.Sockets;
using Novaria.SDKServer.Controllers.Api.ProtocolHandlers;
//using Mono.Security.Cryptography;

namespace Novaria.SDKServer.Controllers.Api
{
    [Route("/agent-zone-1")]
    public class GatewayController : ControllerBase
    {
        private readonly IProtocolHandlerFactory protocolHandlerFactory;
        private readonly ILogger<GatewayController> logger;

        public GatewayController(IProtocolHandlerFactory _protocolHandlerFactory, ILogger<GatewayController> _logger)
        {
            protocolHandlerFactory = _protocolHandlerFactory;
            logger = _logger;
        }

        [HttpPost]
        public IActionResult PostRequest()
        {
            Log.Information("Received Gateway Post Request, Payload");

            using var memoryStream = new MemoryStream();
            Request.Body.CopyTo(memoryStream); // Copy request body to MemoryStream
            byte[] rawPayload = memoryStream.ToArray();    // Get raw bytes from MemoryStream

            Utils.PrintByteArray(rawPayload);

            Packet requestPacket = ParseRequest(rawPayload);

            Log.Information("");

            Log.Information("msgs body: ");
            Utils.PrintByteArray(requestPacket.msgBody.ToArray());
            Log.Information("Sucessfully parsed request packet, id: " + requestPacket.msgId);

            byte[] responsePackeBytes = null;

            NetMsgId msgid = (NetMsgId)requestPacket.msgId;
            Log.Information("Received protocol msgid: " + msgid);

            Type requestType = protocolHandlerFactory.GetRequestPacketTypeByProtocol(msgid);

            if (requestType is null)
            {
                Log.Error($"MsgId {msgid} doesn't have corresponding type registered");
                throw new InvalidDataException("invalid protocol msgid");
            }

            IMessage decodedPayload = DecodePacket(requestType, requestPacket);

            // originally i returned a IMessage from handlers, 
            // but since in this game apprently one req can return diff resp msgids thus they can not be hardcoded in the packet or increments,
            // so we just return packet, bit tedius but inside handlers will determine the response msgid
            var responsePacketObj = protocolHandlerFactory.Invoke(msgid, decodedPayload);

            if (responsePacketObj is null)
            {
                Log.Error($"Protocol {msgid}: {ProtocolHandlerFactory.NetMsgIdToNameMappings[(short)msgid]} is unimplemented and left unhandled");

                //throw new ArgumentNullException("handler does not exist");
                return new EmptyResult();
            }

            // -- changed to manually set in handler
            // succeed_ack = req_msg_id + 1, failed_ack = req_msg_id - 1, for special stuff like gm its -1/-2
            //NetMsgId respMsgId = msgid + 1; // this is probably good for most cases but idk if theres any that doesnt follow this
            Packet responsePacket = (Packet)responsePacketObj;
            // maybe just change invoke to return Packet

            Log.Information($"Response Packet msgid: {responsePacket.msgId}: {(short)responsePacket.msgId}");

            responsePackeBytes = BuildResponse(responsePacket);

            if (responsePackeBytes == null)
            {
                Log.Error("Unable to build response for packet msgid: " + responsePacket.msgId);
                throw new InvalidOperationException("something went wrong during building the response packet!");
            }

            Log.Information("Sucessfully responsed with a respone packet msgid: " + (short)responsePacket.msgId);
            //Console.WriteLine("Built bytes: ");
            //Utils.PrintByteArray(responsePackeBytes);

            Response.Body.Write(responsePackeBytes, 0, responsePackeBytes.Length);

            return new EmptyResult();
        }

        [HttpOptions] // Ike
        public IActionResult OptionsRequest()
        {
            Log.Information("Received Gateway Ike Options Request, Payload: ");

            // store key which is used in AeadTool
            using var memoryStream = new MemoryStream();
            Request.Body.CopyTo(memoryStream); // Copy request body to MemoryStream
            byte[] rawPayload = memoryStream.ToArray();    // Get raw bytes from MemoryStream

            //Utils.PrintByteArray(rawPayload);

            IKEReq ikeRequest = ParseIkeRequest(rawPayload);
            
            Log.Information("Decoded Packet: " + JsonSerializer.Serialize(ikeRequest));

            AeadTool.CLIENT_PUBLIC_KEY = ikeRequest.PubKey.ToArray();

            IKEResp ikeResponse = new IKEResp()
            {
                PubKey = ByteString.CopyFrom(DiffieHellman.Instance.PublicKey),
                Token = AeadTool.TOKEN
            };

            Log.Information("RECEIVED client public key: ");
            Utils.PrintByteArray(AeadTool.CLIENT_PUBLIC_KEY);

            byte[] calculatedKey = DiffieHellman.Instance.CalculateSharedSecret(AeadTool.CLIENT_PUBLIC_KEY);

            Log.Information("CALCULATED KEY: ");
            Utils.PrintByteArray(calculatedKey);

            Packet ikePacket = new Packet()
            {
                msgId = 2,
                msgBody = ikeResponse.ToByteArray()
            };

            var responsePayload = BuildIkeResponse(ikePacket);

            Log.Information("Sending ike response packet: " + JsonSerializer.Serialize(ikeResponse));
            Log.Information("Built bytes: ");
            Utils.PrintByteArray(responsePayload);

            Response.Body.Write(responsePayload, 0, responsePayload.Length);

            return new EmptyResult();
        }

        public static byte[] BuildIkeResponse(Packet packet)
        {
            BinaryWriter packetWriter = new BinaryWriter(new MemoryStream());

            byte[] msgIdBytes = BitConverter.GetBytes(packet.msgId);

            if (BitConverter.IsLittleEndian)
            {
                Array.Reverse<byte>(msgIdBytes);
            }

            packetWriter.Write(msgIdBytes.AsSpan<byte>());
            packetWriter.Write(packet.msgBody.AsSpan<byte>());


            byte[] packetData = ((MemoryStream)packetWriter.BaseStream).ToArray();
            Span<byte> encryptedPacketData = (new byte[packetData.Length + 16]).AsSpan();

            AeadTool.Encrypt_ChaCha20(encryptedPacketData, AeadTool.FIRST_IKE_KEY, AeadTool.PS_REQUEST_NONCE, packetData, false);

            Log.Information("build: encrypted data:");
            Utils.PrintByteArray(encryptedPacketData.ToArray());

            BinaryWriter rawResponseWriter = new BinaryWriter(new MemoryStream());
            rawResponseWriter.Write(AeadTool.PS_REQUEST_NONCE);
            rawResponseWriter.Write(encryptedPacketData);
            
            return ((MemoryStream)rawResponseWriter.BaseStream).ToArray();
        }

        public static T DecodePacket<T>(Packet packet) where T : IMessage 
        {
            Assembly assembly = Assembly.GetAssembly(typeof(LoginReq));
            Type targetType = typeof(T);

            PropertyInfo parserProperty = targetType.GetProperty("Parser", BindingFlags.Static | BindingFlags.Public);
            object parserInstance = parserProperty.GetValue(null);
            MethodInfo parseFromMethod = parserInstance.GetType().GetMethod("ParseFrom", new[] { typeof(byte[]) });

            IMessage parsedMessage = (IMessage)parseFromMethod.Invoke(parserInstance, new object[] { packet.msgBody });

            if (parsedMessage == null)
            {
                throw new InvalidOperationException("Failed to parse message.");
            }

            return (T)parsedMessage;
        }

        public static IMessage DecodePacket(Type targetType, Packet packet)
        {
            PropertyInfo parserProperty = targetType.GetProperty("Parser", BindingFlags.Static | BindingFlags.Public);
            object parserInstance = parserProperty.GetValue(null);
            MethodInfo parseFromMethod = parserInstance.GetType().GetMethod("ParseFrom", new[] { typeof(byte[]) });

            IMessage parsedMessage = (IMessage)parseFromMethod.Invoke(parserInstance, new object[] { packet.msgBody });

            if (parsedMessage == null)
            {
                throw new InvalidOperationException("Failed to parse message.");
            }

            return parsedMessage;
        }

        public static byte[] BuildResponse(Packet packet)
        {
            BinaryWriter packetWriter = new BinaryWriter(new MemoryStream());

            byte[] msgIdBytes = BitConverter.GetBytes(packet.msgId);

            if (BitConverter.IsLittleEndian)
            {
                Array.Reverse<byte>(msgIdBytes);
            }

            packetWriter.Write(msgIdBytes.AsSpan<byte>());
            packetWriter.Write(packet.msgBody.AsSpan<byte>());

            byte[] packetData = ((MemoryStream)packetWriter.BaseStream).ToArray();
            Span<byte> encryptedPacketData = (new byte[packetData.Length + 16]).AsSpan();

            AeadTool.Encrypt_ChaCha20(encryptedPacketData, AeadTool.key3, AeadTool.PS_REQUEST_NONCE, packetData, false);

            Log.Information("build: encrypted data:");
            Utils.PrintByteArray(encryptedPacketData.ToArray());

            BinaryWriter rawResponseWriter = new BinaryWriter(new MemoryStream());
            rawResponseWriter.Write(AeadTool.PS_REQUEST_NONCE);
            rawResponseWriter.Write(encryptedPacketData);

            return ((MemoryStream)rawResponseWriter.BaseStream).ToArray();
        }

        public static Packet ParseRequest(byte[] encryptedRawPayload)
        {
            BinaryReader reader = new BinaryReader(new MemoryStream(encryptedRawPayload));

            byte[] nonceBytes = new byte[12]; // nonce 12 bytes length
            reader.Read(nonceBytes);

            int packetSize = encryptedRawPayload.Length - nonceBytes.Length; // skip nonce length (12)

            byte[] packetBytes = new byte[packetSize];
            reader.Read(packetBytes);

            if (reader.BaseStream.Position != encryptedRawPayload.Length)
            {
                Log.Error("something went wrong, not all the bytes were read");
                Log.Error("reader pos: " + reader.BaseStream.Position);
                Log.Error("original len:" + encryptedRawPayload.Length);
            }

            Span<byte> decrypt_result = new Span<byte>(new byte[packetSize - 16]); // for chacha20 decrypt, the result is 16 bytes less than the input data

            Span<byte> nonce = nonceBytes.AsSpan();
            Span<byte> packet_data = packetBytes.AsSpan();

            bool success = AeadTool.Dencrypt_ChaCha20(decrypt_result, AeadTool.key3, nonce, packet_data, null);

            if (!success)
            {
                Log.Error("something went wrong when chacha20 decrypting the data");
            }

            byte[] decrypted_bytes = decrypt_result.ToArray();

            // might wanna use reader here
            byte[] msgid_bytes = decrypted_bytes[10..12]; // two bytes before msg data is msgid
            Array.Reverse<byte>(msgid_bytes); // should check BitConverter.IsLittleEndian (if true -> reverse, was true on my pc)

            short msgId = BitConverter.ToInt16(msgid_bytes);

            Packet packet = new Packet()
            {
                msgId = msgId,
                msgBody = decrypted_bytes[12..], // 2 + 2 (seqid) + 8 (timestamp)
            };

            return packet;
        }

        // used for parsing ike requests in ps (or any request ig) client -> server
        public static IKEReq ParseIkeRequest(byte[] encryptedRawPayload)
        {
            bool flag = true; // original this flag is: flag = msg.msgId == 1, so true

            BinaryReader reader = new BinaryReader(new MemoryStream(encryptedRawPayload));

            byte[] nonceBytes = new byte[12]; // nonce 12 bytes length
            reader.Read(nonceBytes);

            byte[] aeadBytes = new byte[1]; // aead byte is 1 byte, original field in AeadTool
            int packetSize = encryptedRawPayload.Length - nonceBytes.Length; // skip nonce length (12)

            if (flag)
            {
                reader.Read(aeadBytes); // read to skip in memory, idk whats the use for this
                packetSize--; // skip in payload
            }

            byte[] packetBytes = new byte[packetSize];
            reader.Read(packetBytes);

            if (reader.BaseStream.Position != encryptedRawPayload.Length)
            {
                Log.Error("something went wrong, not all the bytes were read");
                Log.Error("reader pos: " + reader.BaseStream.Position);
                Log.Error("original len:" + encryptedRawPayload.Length);
            }

            Span<byte> decrypt_result = new Span<byte>(new byte[packetSize - 16]); // for chacha20 decrypt, the result is 16 bytes less than the input data

            Span<byte> nonce = nonceBytes.AsSpan();
            Span<byte> packet_data = packetBytes.AsSpan();

            //Console.WriteLine($"Nonce[{nonce.Length}]");
            //Utils.PrintByteArray(nonce.ToArray());

            //Console.WriteLine($"packet_data[{packet_data.Length}]: ");
            //Utils.PrintByteArray(packet_data.ToArray());

            //Console.WriteLine($"key[{AeadTool.FIRST_IKE_KEY.Length}]: ");
            //Utils.PrintByteArray(AeadTool.FIRST_IKE_KEY.ToArray());

            //Console.WriteLine($"Decrypted bytes[{decrypt_result.Length}]: ");

            byte[] associateData = new byte[13]; // this is needed for req decrypt (size: nonce(12) + 1)

            nonceBytes.CopyTo(associateData, 0); // associateData: [nonce, 1], 1 means AesGcm not supported
            associateData[associateData.Length - 1] = 1;

            bool success = AeadTool.Dencrypt_ChaCha20(decrypt_result, AeadTool.FIRST_IKE_KEY, nonce, packet_data, associateData);

            if (!success)
            {
                Log.Error("something went wrong when chacha20 decrypting the data");
            }

            //Utils.PrintByteArray(decrypt_result.ToArray());

            byte[] decrypted_bytes = decrypt_result.ToArray();
            //Utils.PrintByteArray(decrypted_bytes);

            byte[] msgid_bytes = decrypted_bytes[..2]; // first two bytes is msgid
            Array.Reverse<byte>(msgid_bytes); // should check BitConverter.IsLittleEndian (if true -> reverse, was true on my pc)

            short msgId = BitConverter.ToInt16(msgid_bytes);

            Packet packet = new Packet()
            {
                msgId = msgId,
                msgBody = decrypted_bytes[2..],
            };

            //Console.WriteLine("msgid: " + msgId);
            //Console.WriteLine("msgBody length: " + packet.msgBody.Length);

            IKEReq ike_request = IKEReq.Parser.ParseFrom(packet.msgBody);

            return ike_request;
        }

        // used to parse offical pcaps, server -> client
        public static IKEResp ParseIkeResponse(byte[] encryptedRawPayload)
        {
            bool flag = false; // false for this pcap ike resp

            BinaryReader reader = new BinaryReader(new MemoryStream(encryptedRawPayload));

            byte[] nonceBytes = new byte[12]; // nonce 12 bytes length
            reader.Read(nonceBytes);

            byte[] aeadBytes = new byte[1]; // aead byte is 1 byte, original field in AeadTool
            int packetSize = encryptedRawPayload.Length - nonceBytes.Length; // skip nonce length (12)

            if (flag)
            {
                reader.Read(aeadBytes); // read to skip in memory, idk whats the use for this
                packetSize--; // skip in payload
            }

            byte[] packetBytes = new byte[packetSize];
            reader.Read(packetBytes);

            if (reader.BaseStream.Position != encryptedRawPayload.Length)
            {
                Log.Error("something went wrong, not all the bytes were read");
                Log.Error("reader pos: " + reader.BaseStream.Position);
                Log.Error("original len:" + encryptedRawPayload.Length);
            }

            Span<byte> decrypt_result = new Span<byte>(new byte[packetSize - 16]); // for chacha20, the result is 16 bytes less than the input data

            Span<byte> nonce = nonceBytes.AsSpan();
            Span<byte> packet_data = packetBytes.AsSpan();

            bool success = AeadTool.Dencrypt_ChaCha20(decrypt_result, AeadTool.FIRST_IKE_KEY, nonce, packet_data, null); // associateData NULL FOR THIS response pcap 

            if (!success)
            {
                Log.Error("something went wrong when chacha20 decrypting the data");
            }


            byte[] decrypted_bytes = decrypt_result.ToArray();
            byte[] msgid_bytes = decrypted_bytes[..2]; // first two bytes is msgid
            Array.Reverse<byte>(msgid_bytes); // should check BitConverter.IsLittleEndian (if true -> reverse, was true on my pc)

            short msgId = BitConverter.ToInt16(msgid_bytes);

            Packet packet = new Packet()
            {
                msgId = msgId,
                msgBody = decrypted_bytes[2..],
            };

            IKEResp ike_response = IKEResp.Parser.ParseFrom(packet.msgBody);

            return ike_response;
        }
        //private DiffieHellmanManaged SendKey;

        //// put in connection prob
        //public static void SetAeadKey(byte[] pubKey) // original lead to HttpNetworkManager
        //{
        //    byte[] array = this.SendKey.DecryptKeyExchange(pubKey);
        //    int num = array.Length;
        //    if (num > 32)
        //    {
        //        num = 32;
        //    }
        //    this.key3 = new byte[32];
        //    Buffer.BlockCopy(array, 0, this.key3, 0, num);
        //    this.HasKey3 = true;
        //    this.seq = 1;
        //}

        //public byte[] DecryptKeyExchange(byte[] keyEx)
        //{
        //    BigInteger bigInteger = new BigInteger(keyEx).ModPow(this.m_X, this.m_P);
        //    byte[] bytes = bigInteger.GetBytes();
        //    bigInteger.Clear();
        //    return bytes;
        //}
    }
}
