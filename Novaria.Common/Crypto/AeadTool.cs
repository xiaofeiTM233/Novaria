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
        public static readonly byte[] DEFAULT_SERVERLIST_KEY;
        public static readonly byte[] DEFAULT_SERVERLIST_IV;

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

            key3 = new byte[32];
            associatedData = new byte[13];

            // assume AesGcm not supported (frida log)
            associatedData[associatedData.Length - 1] = 1;
        }

        public static bool Dencrypt_ChaCha20(Span<byte> result, ReadOnlySpan<byte> key, ReadOnlySpan<byte> nonce, ReadOnlySpan<byte> data)
        {
            Algorithm chaCha20Poly = AeadAlgorithm.ChaCha20Poly1305;
            KeyBlobFormat keyBlobFormat = KeyBlobFormat.RawSymmetricKey;
            KeyCreationParameters keyCreationParameters = default(KeyCreationParameters);
            bool result2;
            using (Key key2 = Key.Import(chaCha20Poly, key, keyBlobFormat, ref keyCreationParameters))
            {
                result2 = AeadAlgorithm.ChaCha20Poly1305.Decrypt(key2, nonce, null, data, result);
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