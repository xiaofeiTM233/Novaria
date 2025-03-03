using System.Text;
using Serilog;

namespace Novaria.Common.Crypto
{
    public class GameDataExtraction
    {
        public enum GameDataType
        {
            PrimaryInt,
            PrimaryLong,
            PrimaryString,
            NoPrimary
        }

        public class GameDataExtractionResult
        {
            public GameDataType DataType { get; set; }
            public Dictionary<int, byte[]> PrimaryIntData { get; set; }
            public Dictionary<long, byte[]> PrimaryLongData { get; set; }
            public Dictionary<string, byte[]> PrimaryStringData { get; set; }
            public List<byte[]> NoPrimaryData { get; set; }
        }

        private int _magicKey;
	    private string _binVersion;

        public GameDataExtractionResult LoadCommonBinData(string filepath)
        {
            byte[] array = File.ReadAllBytes(filepath);
            if (array == null || array.Length == 0)
            {
                return null;
            }

            GameDataExtractionResult result = new GameDataExtractionResult();

            using (MemoryStream memoryStream = new MemoryStream(array))
            {
                using (BinaryReader binaryReader = new BinaryReader(memoryStream))
                {
                    // Uncomment and use actual validation if needed.
                    // if (binaryReader.ReadInt32() != _magicKey)
                    if (true)
                    {
                        int num = binaryReader.ReadInt16();
                        byte[] array2 = binaryReader.ReadBytes(num);
                        // Uncomment and use actual version check if needed.
                        // if (Encoding.UTF8.GetString(array2) != _binVersion)
                        if (true)
                        {
                            bool hasPrimary = binaryReader.ReadByte() == 1;
                            byte b = binaryReader.ReadByte();
                            bool isPrimaryInt = b == 1;
                            bool isPrimaryLong = b == 2;
                            num = binaryReader.ReadInt32();

                            if (hasPrimary)
                            {
                                if (isPrimaryInt)
                                {
                                    result.DataType = GameDataType.PrimaryInt;
                                    result.PrimaryIntData = LoadPrimaryKeyIntTable(binaryReader, num);
                                }
                                else if (isPrimaryLong)
                                {
                                    result.DataType = GameDataType.PrimaryLong;
                                    result.PrimaryLongData = LoadPrimaryLongIntTable(binaryReader, num);
                                }
                                else
                                {
                                    result.DataType = GameDataType.PrimaryString;
                                    result.PrimaryStringData = LoadPrimaryKeyStringTable(binaryReader, num);
                                }
                            }
                            else
                            {
                                result.DataType = GameDataType.NoPrimary;
                                result.NoPrimaryData = LoadNoPrimaryKeyTable(binaryReader, num);
                            }
                        }
                    }
                }
            }

            return result;
        }

        private Dictionary<int, byte[]> LoadPrimaryKeyIntTable(BinaryReader br, int length)
        {
            Dictionary<int, byte[]> table = new Dictionary<int, byte[]>();
            for (int i = 0; i < length; i++)
            {
                int key = br.ReadInt32();
                int valueLength = br.ReadInt16();
                byte[] value = br.ReadBytes(valueLength);
                table[key] = value;
            }
            return table;
        }

        private Dictionary<long, byte[]> LoadPrimaryLongIntTable(BinaryReader br, int length)
        {
            Dictionary<long, byte[]> table = new Dictionary<long, byte[]>();
            for (int i = 0; i < length; i++)
            {
                long key = br.ReadInt64();
                int valueLength = br.ReadInt16();
                byte[] value = br.ReadBytes(valueLength);
                table[key] = value;
            }
            return table;
        }

        private Dictionary<string, byte[]> LoadPrimaryKeyStringTable(BinaryReader br, int length)
        {
            Dictionary<string, byte[]> table = new Dictionary<string, byte[]>();
            for (int i = 0; i < length; i++)
            {
                int keyLength = br.ReadInt16();
                byte[] keyBytes = br.ReadBytes(keyLength);
                string key = Encoding.UTF8.GetString(keyBytes);
                int valueLength = br.ReadInt16();
                byte[] value = br.ReadBytes(valueLength);
                table[key] = value;
            }
            return table;
        }

        private List<byte[]> LoadNoPrimaryKeyTable(BinaryReader br, int length)
        {
            List<byte[]> list = new List<byte[]>();
            for (int i = 0; i < length; i++)
            {
                int dataLength = br.ReadInt16();
                byte[] data = br.ReadBytes(dataLength);
                list.Add(data);
            }
            return list;
        }
    }
}
