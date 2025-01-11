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
    }

}
