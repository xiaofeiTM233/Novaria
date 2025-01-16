namespace Novaria.PcapParser
{
    public class Program
    {
        public static void Main(string[] args)
        {
            PcapParser.Instance.LoadAllPackets();

            PcapParser.Instance.SavePackets("all_parsed_packets.json");
        }
    }
}
