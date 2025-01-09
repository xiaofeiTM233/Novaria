using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Novaria.Common.Crypto
{
    public static class AeadTool
    {
        public static readonly byte[] DEFAULT_SERVERLIST_KEY;
        public static readonly byte[] DEFAULT_SERVERLIST_IV;

        static AeadTool()
        {
            DEFAULT_SERVERLIST_KEY = new byte[] { 74, 72, 42, 67, 80, 51, 50, 57, 89, 120, 111, 103, 81, 74, 69, 120 };
            DEFAULT_SERVERLIST_IV = new byte[] { 225, 92, 61, 72, 193, 89, 3, 64, 50, 61, 50, 145, 59, 128, 99, 72 };
        }

        public static byte[] DecryptAesCBCInfo(byte[] key, byte[] IV, byte[] cipherBytes)
        {
            return null;
        }

        public static byte[] EncryptAesCBCInfo(byte[] key, byte[] IV, byte[] plainBytes)
        {
            using (Aes aes = Aes.Create())
            {
                aes.Key = key;
                aes.IV = IV;
                aes.Mode = CipherMode.CBC;
                aes.Padding = PaddingMode.PKCS7;

                using (ICryptoTransform encryptor = aes.CreateEncryptor())
                {
                    return encryptor.TransformFinalBlock(plainBytes, 0, plainBytes.Length);
                }
            }
        }

    }
}