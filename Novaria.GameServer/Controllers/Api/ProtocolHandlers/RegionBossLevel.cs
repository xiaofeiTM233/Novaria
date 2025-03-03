using Google.Protobuf;
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

        [ProtocolHandler(NetMsgId.region_boss_level_settle_req)]
        public Packet RegionBossLevelSettleHandler(RegionBossLevelSettleReq req)
        {
            RegionBossLevelSettleResp regionBossLevelSettleResp = new RegionBossLevelSettleResp()
            {
                First = true,
                ThreeStar = true,
                Change = new(),
                //AwardItems = [],
                //FirstItems = [],
                //ThreeStarItems = [],
                Exp = 0,
                //SurpriseItems = [],
                NextPackage = ByteString.Empty
            };

            regionBossLevelSettleResp.AwardItems.Add([]);
            regionBossLevelSettleResp.FirstItems.Add([]);
            regionBossLevelSettleResp.ThreeStarItems.Add([]);
            regionBossLevelSettleResp.SurpriseItems.Add([]);

            return Packet.Create(NetMsgId.region_boss_level_settle_succeed_ack, regionBossLevelSettleResp);
        }
    }
}
