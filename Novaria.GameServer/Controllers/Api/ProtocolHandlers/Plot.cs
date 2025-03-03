using Google.Protobuf;
using Novaria.Common.Core;
using Proto;
namespace Novaria.GameServer.Controllers.Api.ProtocolHandlers
{
    public class Plot : ProtocolHandlerBase
    {
        public Plot(IProtocolHandlerFactory protocolHandlerFactory) : base(protocolHandlerFactory)
        {

        }

        [ProtocolHandler(NetMsgId.plot_reward_receive_req)]
        public Packet PlotRewardReceiveHandler(UI32 req)
        {
            ChangeInfo resp = new ChangeInfo();

            return Packet.Create(NetMsgId.plot_reward_receive_succeed_ack, resp);
        }
    }
}
