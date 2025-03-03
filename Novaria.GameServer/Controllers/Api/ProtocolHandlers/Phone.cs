using Google.Protobuf;
using Novaria.Common.Core;
using Proto;
namespace Novaria.GameServer.Controllers.Api.ProtocolHandlers
{
    public class Phone : ProtocolHandlerBase
    {
        public Phone(IProtocolHandlerFactory protocolHandlerFactory) : base(protocolHandlerFactory)
        {

        }

        [ProtocolHandler(NetMsgId.phone_contacts_info_req)]
        public Packet PhoneContactsInfoHandler(Nil req)
        {
            return Packet.Create(NetMsgId.phone_contacts_info_succeed_ack, PcapParser.PcapParser.Instance.GetPcapPacket(NetMsgId.phone_contacts_info_succeed_ack));
        }
    }
}
