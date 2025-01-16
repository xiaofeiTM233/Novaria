using Mono.Math;
using Novaria.Common.Util;

namespace Novaria.Common.Crypto
{
    public class DiffieHellman : Singleton<DiffieHellman>
    {
        private System.Numerics.BigInteger old_p = System.Numerics.BigInteger.Parse("1552518092300708935130918131258481755631334049434514313202351194902966239949102107258669453876591642442910007680288864229150803718918046342632727613031282983744380820890196288509170691316593175367469551763119843371637221007210577919");

        private BigInteger g = 2;

        private BigInteger spriv = new BigInteger(new byte[] { 1, 2, 3, 4 }); // hardcoded server priv key

        public BigInteger ServerPublicKey { get; set; }

        public DiffieHellman()
        {
            //Console.WriteLine(spriv);
            //g** Spriv mod p
            //ServerPublicKey = this.g.ModPow(spriv, p);
        }

        public byte[] CalculateKey(byte[] clientPubKey) // server calculates key like this 
        {
            // old stuff
            //System.Numerics.BigInteger clientPubKeyInt = new System.Numerics.BigInteger(clientPubKey.Reverse().ToArray());
            //var result = System.Numerics.BigInteger.ModPow(clientPubKeyInt, new System.Numerics.BigInteger(new byte[] { 1, 2, 3, 4 }), old_p);

            //Console.WriteLine(result);
            //if (result < 0)
            //{
            //    Console.WriteLine("THIS SHOULD CRASH");
            //}


            //BigInteger bigInteger = new BigInteger(clientPubKey.Reverse().ToArray()).ModPow(this.spriv, this.p);

            //return bigInteger.GetBytes()[..32];
            return null;
            //BigInteger clientPubKeyInt = new BigInteger(clientPubKey.Reverse().ToArray());

            ////Cpub**Spriv mod p
            //Console.WriteLine(clientPubKeyInt.ToString());

            //var result = BigInteger.ModPow(clientPubKeyInt, spriv, p);

            //Console.WriteLine("------------test-------------------");

            ////Utils.PrintByteArray(BigInteger.Abs());
            ////if (result < 0)
            ////{
            ////    return result.ToByteArray(false, true)[..32];
            ////}

            //Utils.PrintByteArray(result.ToByteArray(true, true));

            //Console.WriteLine("----------------------------------");

            //return result.GetBytes()[..32];
            //return result.ToByteArray(true, true)[..32];
        }
    }
}
