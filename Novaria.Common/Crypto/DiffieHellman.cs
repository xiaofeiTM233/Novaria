using Novaria.Common.Util;
using System.Numerics;

namespace Novaria.Common.Crypto
{
    public class DiffieHellman : Singleton<DiffieHellman>
    {
        private BigInteger p = BigInteger.Parse("1552518092300708935130918131258481755631334049434514313202351194902966239949102107258669453876591642442910007680288864229150803718918046342632727613031282983744380820890196288509170691316593175367469551763119843371637221007210577919");

        private BigInteger g = 2;

        private BigInteger spriv = new BigInteger(new byte[] { 1, 2, 3, 4 }); // hardcoded server priv key

        public BigInteger ServerPublicKey { get; set; }

        public DiffieHellman()
        {
            //g** Spriv mod p
            ServerPublicKey = BigInteger.ModPow(g, spriv, p);
        }

        public byte[] CalculateKey(byte[] clientPubKey) // server calculates key like this 
        {
            BigInteger clientPubKeyInt = new BigInteger(clientPubKey.Reverse().ToArray());

            //Cpub**Spriv mod p
            Console.WriteLine(clientPubKeyInt.ToString());

            var result = BigInteger.ModPow(clientPubKeyInt, spriv, p);
            if (result < 0)
            {
                result += p; // Make the result non-negative, causes error if -
            }

            return result.ToByteArray(true, true)[..32];
        }

        // this is for manual pcap parsing use only, officalServerPubKey is in the first IKE response, client priv will be in frida
        public byte[] CalculateKey(byte[] officalServerPubKey, byte[] officialClientPriv)
        {
            BigInteger officalServerPubKeyInt = new BigInteger(officalServerPubKey.Reverse().ToArray());
            BigInteger officialClientPrivInt = new BigInteger(officialClientPriv.Reverse().ToArray());

            BigInteger result = BigInteger.ModPow(officalServerPubKeyInt, officialClientPrivInt, p);

            return result.ToByteArray(true, true)[..32];
        }
    }
}
