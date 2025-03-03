using Novaria.Common.Core;
using Proto;
using Serilog;

namespace Novaria.GameServer.Controllers.Api.ProtocolHandlers
{
    public class RegionBossLevel : ProtocolHandlerBase
    {
        public RegionBossLevel(IProtocolHandlerFactory protocolHandlerFactory) : base(protocolHandlerFactory)
        {

        }

        [ProtocolHandler(NetMsgId.region_boss_level_apply_req)]
        public Packet RegionBossLevelApplyHandler(RegionBossLevelApplyReq req)
        {
            ChangeInfo regionBossChangeInfo = new ChangeInfo();

            return Packet.Create(NetMsgId.region_boss_level_apply_succeed_ack, regionBossChangeInfo);
        }
    }
}
