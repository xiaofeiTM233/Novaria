using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using NSec.Cryptography;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Novaria.Common.Crypto
{
    public static class AeadTool
    {
        public static byte[] CLIENT_PUBLIC_KEY { get; set; }

        public static byte[] PS_REQUEST_NONCE = new byte[12];
        public static byte[] PS_PUBLIC_KEY = new byte[96]; // this is my public key, [69, 0, 0, 0, ...., 0, 0, 0, 69], 69s so i actually know i sent it correctly in frida log
        public static string TOKEN = "seggs"; // hardcoded for now

        public static readonly byte[] DEFAULT_SERVERLIST_KEY;
        public static readonly byte[] DEFAULT_SERVERLIST_IV;

        public static readonly byte[] FIRST_IKE_KEY;

        public static readonly byte[] associatedData;

        public static byte[] GenerateRandomPublicKey()
        {
            byte[] key = new byte[96];
            using (RandomNumberGenerator rng = RandomNumberGenerator.Create())
            {
                rng.GetBytes(key);
            }
            return key;
        }

        public static ReadOnlySpan<byte> AEADMARK
        {
            get
            {
                return AeadTool.associatedData.AsSpan(12, 1);
            }
        }

        public static byte[] key3 { get; set; }

        static AeadTool()
        {
            DEFAULT_SERVERLIST_KEY = new byte[] { 74, 72, 42, 67, 80, 51, 50, 57, 89, 120, 111, 103, 81, 74, 69, 120 };
            DEFAULT_SERVERLIST_IV = new byte[] { 225, 92, 61, 72, 193, 89, 3, 64, 50, 61, 50, 145, 59, 128, 99, 72 };
            FIRST_IKE_KEY = new byte[] { 51, 76, 83, 57, 38, 111, 89, 100, 115, 112, 94, 53, 119, 105, 56, 38, 90, 120, 67, 35, 99, 55, 77, 90, 103, 55, 51, 104, 98, 69, 68, 119 };
            key3 = new byte[32];
            associatedData = new byte[13];

            // assume AesGcm not supported (frida log)
            associatedData[associatedData.Length - 1] = 1;


            //byte[] testkey = Encoding.ASCII.GetBytes("#$*;1H&x*)0!@,/OcIe4VbiL[~fLyE7t"); // apprently key different for pc
            //Console.WriteLine("test key" + testkey.Length);
            //Utils.Utils.PrintByteArray(testkey);
            //Console.WriteLine();
            //testkey.CopyTo(FIRST_IKE_KEY, 0);

            PS_PUBLIC_KEY[0] = 69;
            PS_PUBLIC_KEY[95] = 69;

            PS_REQUEST_NONCE[0] = 42;
            PS_REQUEST_NONCE[11] = 42;
        }

        public static bool Dencrypt_ChaCha20(Span<byte> result, ReadOnlySpan<byte> key, ReadOnlySpan<byte> nonce, ReadOnlySpan<byte> data, ReadOnlySpan<byte> associatedData)
        {
            Algorithm chaCha20Poly = AeadAlgorithm.ChaCha20Poly1305;
            KeyBlobFormat keyBlobFormat = KeyBlobFormat.RawSymmetricKey;
            KeyCreationParameters keyCreationParameters = default(KeyCreationParameters);
            bool result2;
            //System.ArgumentException: 'The length of the plaintext must be equal to the length of the ciphertext minus the tag size. (Parameter 
            using (Key key2 = Key.Import(chaCha20Poly, key, keyBlobFormat, ref keyCreationParameters))
            {
                result2 = AeadAlgorithm.ChaCha20Poly1305.Decrypt(key2, nonce, associatedData, data, result);
            }

            return result2;
        }


        public static void Encrypt_ChaCha20(Span<byte> result, ReadOnlySpan<byte> key, ReadOnlySpan<byte> nonce, ReadOnlySpan<byte> data, bool needAssociatedData)
        {
            Algorithm chaCha20Poly = AeadAlgorithm.ChaCha20Poly1305;
            KeyBlobFormat keyBlobFormat = KeyBlobFormat.RawSymmetricKey;
            KeyCreationParameters keyCreationParameters = default(KeyCreationParameters);
            using (Key key2 = Key.Import(chaCha20Poly, key, keyBlobFormat, ref keyCreationParameters))
            {
                if (!needAssociatedData)
                {
                    AeadAlgorithm.ChaCha20Poly1305.Encrypt(key2, nonce, null, data, result);
                } else
                {
                    nonce.CopyTo(AeadTool.associatedData.AsSpan(0, 12));
                    AeadAlgorithm.ChaCha20Poly1305.Encrypt(key2, nonce, AeadTool.associatedData.AsSpan<byte>(), data, result);
                }
            }
        }

        // probably wrong
        public static byte[] DecryptAesCBCInfo(byte[] key, byte[] IV, byte[] cipherBytes)
        {
            using (Aes aes = Aes.Create())
            {
                aes.Key = key;
                aes.IV = IV;
                aes.Mode = CipherMode.CBC;
                aes.Padding = PaddingMode.PKCS7;

                using (ICryptoTransform decryptor = aes.CreateDecryptor())
                {
                    return decryptor.TransformFinalBlock(cipherBytes, 0, cipherBytes.Length);
                }
            }
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