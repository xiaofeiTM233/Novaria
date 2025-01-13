using Novaria.Common.Core;
using Novaria.Common.Crypto;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;


namespace Novaria.PcapParser
{
    public class Program
    {
        public static void Main(string[] args)
        {
            PcapParser pcapParser = new PcapParser("first_instant_join.json");

            pcapParser.SavePackets("parsed_packets.json");
        }
    }


}
