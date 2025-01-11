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
//using Mono.Security.Cryptography;

namespace Novaria.SDKServer.Controllers.Api
{
    [Route("/agent-zone-1")]
    public class GatewayController : ControllerBase
    {

        private byte[] key3 = new byte[32];

        [HttpPost]
        public IActionResult PostRequest()
        {
            Log.Information("Received Gateway Post Request, Payload");

            using var memoryStream = new MemoryStream();
            Request.Body.CopyTo(memoryStream); // Copy request body to MemoryStream
            byte[] rawPayload = memoryStream.ToArray();    // Get raw bytes from MemoryStream

            Utils.PrintByteArray(rawPayload);

            Packet requestPacket = ParseRequest(rawPayload);

            Console.WriteLine();

            Console.WriteLine("msgs body: ");
            Utils.PrintByteArray(requestPacket.msgBody.ToArray());
            Log.Information("Sucessfully parsed request packet, id: " + requestPacket.msgId);

            byte[] responsePackeBytes = null;

            switch (requestPacket.msgId)
            {
                case 4:
                    {
                        LoginReq loginreq = DecodePacket<LoginReq>(requestPacket);

                        Log.Information("login_req received, contents: " + JsonSerializer.Serialize(loginreq));

                        Log.Information("Building login resp...");

                        LoginResp loginResp = new LoginResp()
                        {
                            Token = "seggstoken",
                        };

                        Packet responsePacket = new Packet()
                        {
                            msgId = 5,
                            msgBody = loginResp.ToByteArray()
                        };

                        responsePackeBytes = BuildResponse(responsePacket);

                        Log.Information("Sending login_resp packet: " + JsonSerializer.Serialize(loginResp));

                        break;
                    }
                case 1001:
                    {
                        Nil nilReq = DecodePacket<Nil>(requestPacket);
                        Log.Information("nil_req received, contents: " + JsonSerializer.Serialize(nilReq));

                        Log.Information("Building nil resp...");

                        Nil nilResp = new Nil()
                        {

                        };

                        Packet responsePacket = new Packet()
                        {
                            msgId = 10001,
                            msgBody = nilResp.ToByteArray()
                        };

                        responsePackeBytes = BuildResponse(responsePacket);

                        Log.Information("Sending nil_resp packet: " + JsonSerializer.Serialize(nilResp));
                        break;
                    }
                default:
                    Log.Information("That packet has no handler!");
                    break;
            }

            if (responsePackeBytes == null)
            {
                throw new InvalidOperationException("something went wrong during building the response packet!");
            }


            Console.WriteLine("Built bytes: ");
            Utils.PrintByteArray(responsePackeBytes);

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
            
            Console.WriteLine("Decoded Packet: " + JsonSerializer.Serialize(ikeRequest));

            AeadTool.CLIENT_PUBLIC_KEY = ikeRequest.PubKey.ToArray();

            IKEResp ikeResponse = new IKEResp()
            {
                PubKey = ByteString.CopyFrom(AeadTool.CLIENT_PUBLIC_KEY),
                Token = AeadTool.TOKEN
            };

            Packet ikePacket = new Packet()
            {
                msgId = 2,
                msgBody = ikeResponse.ToByteArray()
            };

            var responsePayload = BuildIkeResponse(ikePacket);

            Console.WriteLine("Sending ike response packet: " + JsonSerializer.Serialize(ikeResponse));
            Console.WriteLine("Built bytes: ");
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

            Console.WriteLine("build: encrypted data:");
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

            Console.WriteLine("build: encrypted data:");
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
