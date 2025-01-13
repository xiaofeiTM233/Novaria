using Google.Protobuf;
using Novaria.Common.Core;
using Proto;
using Serilog;
using System.Text.Json;

namespace Novaria.GameServer.Controllers.Api.ProtocolHandlers
{
    public class Login : ProtocolHandlerBase
    {
        public Login(IProtocolHandlerFactory protocolHandlerFactory) : base(protocolHandlerFactory)
        {

        }

        [ProtocolHandler(NetMsgId.player_login_req)] // req id goes here
        public Packet PlayerLoginHandler(LoginReq req)
        {
            Log.Information("login_req received, contents: " + JsonSerializer.Serialize(req));

            Log.Information("Building login resp...");

            LoginResp loginResp = new LoginResp()
            {
                Token = "seggstoken",
            };

            Log.Information("Sending login_resp packet: " + JsonSerializer.Serialize(loginResp));
            return Packet.Create(NetMsgId.player_login_succeed_ack, loginResp);
        }

        [ProtocolHandler(NetMsgId.player_data_req)]
        public Packet PlayerDataHandler(Nil req)
        {
            // example: different netmsgid returned, if new player player_new_notify, other wise player_data_ack

            PlayerInfo player_data_ack = new PlayerInfo()
            {
                Acc = new AccInfo()
                {
                    Id = 1,
                    NickName = "seggs",
                    Gender = true,
                }
            };

            Log.Information("Sending player_new_notify packet: " + JsonSerializer.Serialize(player_data_ack));
            return Packet.Create(NetMsgId.player_new_notify, new Nil());
        }

        [ProtocolHandler(NetMsgId.player_reg_req)]
        public Packet PlayerRegHandler(PlayerReg req)
        {
            Log.Information("player_reg_req received, contents: " + JsonSerializer.Serialize(req));

            //Log.Information("Sending PlayerInfo packet: " + JsonSerializer.Serialize(playerInfoResp));
            return null;
        }

        
    }
}
