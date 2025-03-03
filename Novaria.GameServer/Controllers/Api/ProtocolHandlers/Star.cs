using Google.Protobuf;
using Novaria.Common.Core;
using Proto;
namespace Novaria.GameServer.Controllers.Api.ProtocolHandlers
{
    public class Star : ProtocolHandlerBase
    {
        public Star(IProtocolHandlerFactory protocolHandlerFactory) : base(protocolHandlerFactory)
        {

        }

        [ProtocolHandler(NetMsgId.star_tower_info_req)] // req id goes here
        public Packet PlayerLoginHandler(Nil req)
        {
            StarTowerInfo towerResp = new();
            
            return Packet.Create(NetMsgId.star_tower_info_succeed_ack, towerResp);
        }

        [ProtocolHandler(NetMsgId.star_tower_build_brief_list_get_req)]
        public Packet StarTowerBuildListGetHandler(Nil req)
        {
            return Packet.Create(NetMsgId.star_tower_build_brief_list_get_succeed_ack, PcapParser.PcapParser.Instance.GetPcapPacket(NetMsgId.star_tower_build_brief_list_get_succeed_ack));
        }

        [ProtocolHandler(NetMsgId.star_tower_build_detail_get_req)]
        public Packet StarTowerBuildDetailGetHandler(StarTowerBuildDetailGetReq req)
        {
            return Packet.Create(NetMsgId.star_tower_build_detail_get_succeed_ack, PcapParser.PcapParser.Instance.GetPcapPacket(NetMsgId.star_tower_build_detail_get_succeed_ack));
        }
    }
}
