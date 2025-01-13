using Google.Protobuf;
using Novaria.Common.Core;
using Proto;
using Serilog;
using System.Text.Json;
using Novaria.PcapParser;
using Novaria.Common.Crypto;

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
            AccInfo accountInfo = new AccInfo()
            {
                Id = 1,
                Hashtag = 4562,
                HeadIcon = 100101,
                NickName = "夏萝莉是小楠梁",
                Gender = false,
                Signature = "",
                TitlePrefix = 1,
                TitleSuffix = 1,
                SkinId = 10301,
                CreateTime = DateTime.Now.Ticks,
            };

            accountInfo.Newbies.Add(new NewbieInfo() { GroupId = 101, StepId = -1 });
            accountInfo.Newbies.Add(new NewbieInfo() { GroupId = 102, StepId = -1 });


            byte[] real_key = AeadTool.key3;
            // load from pcap
            PcapParser.PcapParser.Instance.Parse("first_instant_join.json");

            PlayerInfo pcapPlayerInfo = (PlayerInfo)PcapParser.PcapParser.Instance.GetPcapPacket(NetMsgId.player_data_succeed_ack);

            PlayerInfo playerInfoResponse = new PlayerInfo()
            {
                Acc = pcapPlayerInfo.Acc
            };

            AeadTool.key3 = real_key;
            Log.Information("Sending player_new_notify packet: " + JsonSerializer.Serialize(pcapPlayerInfo));
            return Packet.Create(NetMsgId.player_data_succeed_ack, pcapPlayerInfo);
        }

        //[ProtocolHandler(NetMsgId.player_reg_req)]
        //public Packet PlayerRegHandler(PlayerReg req)
        //{
        //    Log.Information("player_reg_req received, contents: " + JsonSerializer.Serialize(req));

        //    //Log.Information("Sending PlayerInfo packet: " + JsonSerializer.Serialize(playerInfoResp));
        //    return null;
        //}
        
    }
}
