using Novaria.Common.Core;
using Proto;
using Serilog;

namespace Novaria.GameServer.Controllers.Api.ProtocolHandlers
{
    public class ActivityDetail : ProtocolHandlerBase
    {
        public ActivityDetail(IProtocolHandlerFactory protocolHandlerFactory) : base(protocolHandlerFactory)
        {

        }

        [ProtocolHandler(NetMsgId.activity_detail_req)] // req id goes here
        public Packet PlayerLoginHandler(Nil req)
        {
            return Packet.Create(NetMsgId.activity_detail_succeed_ack, PcapParser.PcapParser.Instance.GetPcapPacket(NetMsgId.activity_detail_succeed_ack));
        }
    }
}
