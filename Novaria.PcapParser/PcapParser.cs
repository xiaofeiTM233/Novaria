using Novaria.Common.Core;
using Novaria.Common.Crypto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Novaria.Common.Util;
using Novaria.GameServer.Controllers.Api.ProtocolHandlers;
using Google.Protobuf;

namespace Novaria.PcapParser
{
    public class PcapParser
    {
        public int totalPacketsCount = 0;
        public List<NovaPacket> packets = new List<NovaPacket>();

        private readonly string rootPath = "E:\\documents\\Decompiling\\Extracted\\NOVA\\Novaria\\Novaria.PcapParser\\";

        public PcapParser(string pcapFileName)
        {
            string pcapJsonFile = File.ReadAllText(rootPath + pcapFileName);
            var data = System.Text.Json.JsonSerializer.Deserialize<List<PcapPacket>>(pcapJsonFile);

            foreach (PcapPacket packet in data)
            {
                totalPacketsCount++;
                byte[] payload = ConvertStringToByteArray(packet.payload);

                if (packet.type == "KEY")
                {
                    AeadTool.key3 = payload;
                    Console.WriteLine("got key!");
                    Utils.PrintByteArray(AeadTool.key3);
                    continue;
                }

                if (AeadTool.key3 == null) // skip first 2 packets (ike req and resp)
                {
                    continue;
                }

                // parse packet and add to packet list here
                Packet parsedPacket = null;

                try
                {

                    if (packet.type == "REQUEST")
                    {
                        parsedPacket = HttpNetworkManager.Instance.ParseRequest(payload);
                    } else
                    {
                        parsedPacket = HttpNetworkManager.Instance.ParseResponse(payload);
                    }
                } catch (Exception e)
                {
                    Console.WriteLine($"something went wrong while parsing {packet.type} packet");
                    continue;
                }

                NetMsgId msgid = (NetMsgId)parsedPacket.msgId;
                Type requestType = ProtocolHandlerFactory.GetRequestPacketTypeByProtocol(msgid);

                if (requestType == null)
                {
                    Console.WriteLine("invalid imessage type");
                    continue;
                }

                IMessage decodedPayload = HttpNetworkManager.Instance.DecodePacket(requestType, parsedPacket);

                Console.WriteLine($"Got Type: {packet.type}, MsgId: {(short)msgid}");

                packets.Add(new NovaPacket()
                {
                    Method = packet.type,
                    Packet = Convert.ChangeType(decodedPayload, requestType),
                    MsgId = msgid,
                    ClassType = ProtocolHandlerFactory.NetMsgIdToNameMappings[(short)msgid]
                });
            }
        }

        public void SavePackets(string saveFileName)
        {
            Console.WriteLine($"Got {packets.Count} packet(s) out a total of {totalPacketsCount}");
            File.WriteAllText(rootPath + saveFileName, JsonConvert.SerializeObject(packets, Formatting.Indented));
        }

        public static byte[] ConvertStringToByteArray(string input)
        {
            return input.Trim('[', ']').Split(',').Select(byte.Parse).ToArray();
        }
    }

    public class PcapPacket
    {
        public string payload { get; set; }
        public string type { get; set; }
    }

    public class NovaPacket
    {
        public string Method { get; set; }
        public object Packet { get; set; }
        public string ClassType { get; set; }
        public NetMsgId MsgId { get; set; }
    }
}
