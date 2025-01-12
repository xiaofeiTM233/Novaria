using Google.Protobuf;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novaria.Common.Core
{
    public class Packet
    {
        public short msgId;

        public byte[] msgBody;

        public Action<Packet, object> callback;

        public short receiveMsgId;

        public static Packet Create(NetMsgId msgId, IMessage protoPacket)
        {
            return new Packet()
            {
                msgId = (short)msgId,
                msgBody = protoPacket.ToByteArray(),
            };
        }
    }

}
