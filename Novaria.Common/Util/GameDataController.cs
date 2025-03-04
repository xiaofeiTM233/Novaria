using System.Text;

namespace Novaria.Common.Util
{
    public class GameDataController : Singleton<GameDataController>
    {
        private int _magicKey = 234324;
        private string _binVersion = "0.1.0.2";

        public void LoadCommonBinData(string filepath, Action<int, byte[]> primaryIntAction, Action<string, byte[]> primaryStringAction, Action<long, byte[]> primaryLongAction, Action<byte[]> noPrimaryAction)
        {
            byte[] array = File.ReadAllBytes(filepath);

            if (array == null)
            {
                return;
            }
            using (MemoryStream memoryStream = new MemoryStream(array))
            {
                using (BinaryReader binaryReader = new BinaryReader(memoryStream))
                {
                    var curr_magicKey = binaryReader.ReadInt32();

                    if (curr_magicKey == this._magicKey)
                    {
                        int num = (int)binaryReader.ReadInt16();
                        byte[] bytes = binaryReader.ReadBytes(num);
                        if (!(Encoding.UTF8.GetString(bytes) != this._binVersion))
                        {
                            bool flag = binaryReader.ReadByte() == 1;
                            byte b = binaryReader.ReadByte();
                            bool flag2 = b == 1;
                            bool flag3 = b == 2;
                            num = binaryReader.ReadInt32();
                            if (flag)
                            {
                                if (flag2)
                                {
                                    this.LoadPrimaryKeyIntTable(binaryReader, num, primaryIntAction);
                                } else if (flag3)
                                {
                                    this.LoadPrimaryLongIntTable(binaryReader, num, primaryLongAction);
                                } else
                                {
                                    this.LoadPrimaryKeyStringTable(binaryReader, num, primaryStringAction);
                                }
                            } else
                            {
                                this.LoadNoPrimaryKeyTable(binaryReader, num, noPrimaryAction);
                            }
                        }
                    }
                }
            }
        }

        private void LoadPrimaryKeyIntTable(BinaryReader br, int length, Action<int, byte[]> primaryIntAction)
        {
            if (primaryIntAction == null)
            {
                return;
            }
            for (int i = 0; i < length; i++)
            {
                int arg = br.ReadInt32();
                int count = (int)br.ReadInt16();
                byte[] arg2 = br.ReadBytes(count);
                primaryIntAction(arg, arg2);
            }
        }

        private void LoadPrimaryLongIntTable(BinaryReader br, int length, Action<long, byte[]> primaryLongAction)
        {
            if (primaryLongAction == null)
            {
                return;
            }
            for (int i = 0; i < length; i++)
            {
                long arg = br.ReadInt64();
                int count = (int)br.ReadInt16();
                byte[] arg2 = br.ReadBytes(count);
                primaryLongAction(arg, arg2);
            }
        }
        private void LoadPrimaryKeyStringTable(BinaryReader br, int length, Action<string, byte[]> primaryStringAction)
        {
            if (primaryStringAction == null)
            {
                return;
            }
            for (int i = 0; i < length; i++)
            {
                int count = (int)br.ReadInt16();
                byte[] array = br.ReadBytes(count);
                string @string = Encoding.UTF8.GetString(array);
                count = (int)br.ReadInt16();
                array = br.ReadBytes(count);
                primaryStringAction(@string, array);
            }
        }

        private void LoadNoPrimaryKeyTable(BinaryReader br, int length, Action<byte[]> noPrimaryAction)
        {
            if (noPrimaryAction == null)
            {
                return;
            }
            for (int i = 0; i < length; i++)
            {
                int count = (int)br.ReadInt16();
                byte[] obj = br.ReadBytes(count);
                noPrimaryAction(obj);
            }
        }
    }
}
