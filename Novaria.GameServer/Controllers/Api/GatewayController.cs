using Microsoft.AspNetCore.Mvc;
using Novaria.Common.Crypto;
using System.Text.Json;
using Serilog;
using Novaria.Common.Core;
using Proto;
using Google.Protobuf;
using Novaria.GameServer.Controllers.Api.ProtocolHandlers;
using Novaria.Common.Util;

namespace Novaria.GameServer.Controllers.Api
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

            Packet requestPacket = HttpNetworkManager.Instance.ParseRequest(rawPayload);

            Log.Information("");

            Log.Information("msgs body: ");
            Utils.PrintByteArray(requestPacket.msgBody.ToArray());
            Log.Information("Sucessfully parsed request packet, id: " + requestPacket.msgId);

            byte[] responsePackeBytes = null;

            NetMsgId msgid = (NetMsgId)requestPacket.msgId;
            Log.Information("Received protocol msgid: " + msgid);

            Type requestType = ProtocolHandlerFactory.GetRequestPacketTypeByProtocol(msgid);

            if (requestType is null)
            {
                Log.Error($"MsgId {msgid} doesn't have corresponding type registered");
                throw new InvalidDataException("invalid protocol msgid");
            }

            IMessage decodedPayload = HttpNetworkManager.Instance.DecodePacket(requestType, requestPacket);

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

            responsePackeBytes = HttpNetworkManager.Instance.BuildResponse(responsePacket);

            if (responsePackeBytes == null)
            {
                Log.Error("Unable to build response for packet msgid: " + responsePacket.msgId);
                throw new InvalidOperationException("something went wrong during building the response packet!");
            }

            Log.Information("Sucessfully responsed with a respone packet msgid: " + (short)responsePacket.msgId);

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

            Utils.PrintByteArray(rawPayload);

            IKEReq ikeRequest = HttpNetworkManager.Instance.ParseIkeRequest(rawPayload);
            
            Log.Information("Decoded Packet: " + JsonSerializer.Serialize(ikeRequest));

            byte[] clientPublicKey = ikeRequest.PubKey.ToArray();

            Log.Information("RECEIVED client public key: ");
            Utils.PrintByteArray(clientPublicKey);

            Console.WriteLine("OLD::");

            Console.WriteLine(new System.Numerics.BigInteger(clientPublicKey.Reverse().ToArray()));

            Console.WriteLine("OLD::");

            //AeadTool.key3 = DiffieHellman.Instance.CalculateKey(clientPublicKey);
            AeadTool.SetAeadKey(clientPublicKey);
            Log.Information("KEY3 (chacha20 key) calculated: ");
            Utils.PrintByteArray(AeadTool.key3);

            byte[] pubKey = AeadTool.GetPubKey();

            IKEResp ikeResponse = new IKEResp()
            {
                //PubKey = ByteString.CopyFrom(AeadTool.PS_PUBLIC_KEY.Reverse().ToArray()),
                PubKey = ByteString.CopyFrom(pubKey),
                Token = AeadTool.TOKEN
            };

            Log.Information("Sending ps server public key: ");
            Utils.PrintByteArray(pubKey);

            Packet ikePacket = new Packet()
            {
                msgId = 2,
                msgBody = ikeResponse.ToByteArray()
            };

            var responsePayload = HttpNetworkManager.Instance. BuildIkeResponse(ikePacket);

            Log.Information("Sending ike response packet: " + JsonSerializer.Serialize(ikeResponse));
            Log.Information("Built bytes: ");
            Utils.PrintByteArray(responsePayload);

            Response.Body.Write(responsePayload, 0, responsePayload.Length);

            return new EmptyResult();
        }
    }
}
