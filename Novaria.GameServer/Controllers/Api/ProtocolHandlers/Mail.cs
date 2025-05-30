﻿using Novaria.Common.Core;
using Proto;
using Serilog;

namespace Novaria.GameServer.Controllers.Api.ProtocolHandlers
{
    public class Mail : ProtocolHandlerBase
    {
        public Mail(IProtocolHandlerFactory protocolHandlerFactory) : base(protocolHandlerFactory)
        {

        }

        [ProtocolHandler(NetMsgId.mail_list_req)] // req id goes here
        public Packet PlayerLoginHandler(Nil req)
        {
            Mails mailListResp = (Mails)PcapParser.PcapParser.Instance.GetPcapPacket(NetMsgId.mail_list_succeed_ack);

            mailListResp.List[0].Subject = "seggs";
            mailListResp.List[1].Subject = "seggs";
            mailListResp.List[2].Subject = "seggs";

            return Packet.Create(NetMsgId.mail_list_succeed_ack, mailListResp);
        }
    }
}
