using Google.Protobuf;
using Novaria.Common.Core;
using Proto;
namespace Novaria.GameServer.Controllers.Api.ProtocolHandlers
{
    public class Tower : ProtocolHandlerBase
    {
        public Tower(IProtocolHandlerFactory protocolHandlerFactory) : base(protocolHandlerFactory)
        {

        }

        [ProtocolHandler(NetMsgId.tower_growth_detail_req)]
        public Packet TowerGrowthDetailHandler(Nil req)
        {
            TowerGrowthDetailResp resp = new TowerGrowthDetailResp();

            return Packet.Create(NetMsgId.tower_growth_detail_succeed_ack, resp);
        }
    }
}
