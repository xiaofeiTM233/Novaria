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
