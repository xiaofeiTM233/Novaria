namespace Novaria.PcapParser
{
    public class Program
    {
        public static void Main(string[] args)
        {
            PcapParser.Instance.Parse("first_instant_join.json");

            PcapParser.Instance.SavePackets("parsed_packets.json");
        }
    }
}
