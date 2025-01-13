namespace Novaria.PcapParser
{
    public class Program
    {
        public static void Main(string[] args)
        {
            PcapParser.Instance.Parse("all_mainmenu_packets.json");

            PcapParser.Instance.SavePackets("parsed_packets.json");
        }
    }
}
