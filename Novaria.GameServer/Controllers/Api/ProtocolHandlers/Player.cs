using Google.Protobuf;
using Novaria.Common.Core;
using Proto;
namespace Novaria.GameServer.Controllers.Api.ProtocolHandlers
{
    public class Player : ProtocolHandlerBase
    {
        public Player(IProtocolHandlerFactory protocolHandlerFactory) : base(protocolHandlerFactory)
        {

        }

        [ProtocolHandler(NetMsgId.player_board_set_req)]
        public Packet PlayerBoardSetHandler(PlayerBoardSetReq req)
        {
            ChangeInfo changeInfo = new();

            return Packet.Create(NetMsgId.player_board_set_succeed_ack, changeInfo);
        }
    }
}
