using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Novaria.Common.Utils
{
    public class DiffieHellman
    {
        private static DiffieHellman instance;
        public static DiffieHellman Instance
        {
            get
            {
                if (instance == null)
                    instance = new DiffieHellman();

                return instance;
            }
            set => instance = value;
        }

        private const int g = 2;
        private readonly byte[] p = new byte[] { 255,255,255,255,255,255,255,255,201,15,218,162,33,104,194,52,196,198,98,139,128,220,28,209,41,2,78,8,138,103,204,116,2,11,190,166,59,19,155,34,81,74,8,121,142,52,4,221,239,149,25,179,205,58,67,27,48,43,10,109,242,95,20,55,79,225,53,109,109,81,194,69,228,133,181,118,98,94,126,198,244,76,66,233,166,58,54,32,255,255,255,255,255,255,255,255 };

        private byte[] privateKey; // Private key (Spriv or Cpriv)
        private byte[] publicKey;  // Public key (Spub or Cpub)

        public byte[] PublicKey => publicKey;

        public DiffieHellman()
        {
            GenerateKeys();
        }

        private void GenerateKeys()
        {
            // Generate a random private key
            using (var rng = RandomNumberGenerator.Create())
            {
                privateKey = new byte[128]; // 1024-bit private key
                rng.GetBytes(privateKey);
            }

            // Calculate the public key: g^privateKey mod p
            BigInteger privKeyInt = new BigInteger(privateKey, isUnsigned: true, isBigEndian: true);
            BigInteger pInt = new BigInteger(p, isUnsigned: true, isBigEndian: true);
            BigInteger pubKeyInt = BigInteger.ModPow(g, privKeyInt, pInt);

            publicKey = pubKeyInt.ToByteArray(isUnsigned: true, isBigEndian: true);
        }

        public byte[] CalculateSharedSecret(byte[] otherPublicKey)
        {
            BigInteger otherPubKeyInt = new BigInteger(otherPublicKey, isUnsigned: true, isBigEndian: true);
            BigInteger privKeyInt = new BigInteger(privateKey, isUnsigned: true, isBigEndian: true);
            BigInteger pInt = new BigInteger(p, isUnsigned: true, isBigEndian: true);

            // Calculate the shared secret: (otherPublicKey^privateKey) mod p
            BigInteger sharedSecretInt = BigInteger.ModPow(otherPubKeyInt, privKeyInt, pInt);
            return sharedSecretInt.ToByteArray(isUnsigned: true, isBigEndian: true);
        }
    }
}
