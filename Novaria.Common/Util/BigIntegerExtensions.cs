using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novaria.Common.Util
{
    using System;
    using System.Numerics;

    public static class BigIntegerExtensions
    {
        public static byte[] GetBytes(this BigInteger value)
        {
            if (value == 0)
            {
                return new byte[1];
            }

            int bitCount = value.GetBitCount();
            int byteCount = bitCount >> 3;
            if ((bitCount & 7) != 0)
            {
                byteCount++;
            }

            byte[] result = new byte[byteCount];
            int remainingBytes = byteCount & 3;
            if (remainingBytes == 0)
            {
                remainingBytes = 4;
            }

            int byteIndex = 0;

            // Convert BigInteger to unsigned equivalent (to match the behavior of the original code)
            BigInteger unsignedValue = BigInteger.Abs(value);

            // Iterate through each 32-bit chunk of the BigInteger
            while (unsignedValue != 0)
            {
                uint currentWord = (uint)(unsignedValue & 0xFFFFFFFF);
                unsignedValue >>= 32;

                for (int i = remainingBytes - 1; i >= 0; i--)
                {
                    result[byteIndex + i] = (byte)(currentWord & 0xFF);
                    currentWord >>= 8;
                }

                byteIndex += remainingBytes;
                remainingBytes = 4;
            }

            return result;
        }

        // Helper method to calculate the number of significant bits in a BigInteger
        private static int GetBitCount(this BigInteger value)
        {
            BigInteger unsignedValue = BigInteger.Abs(value);
            int bits = 0;

            while (unsignedValue != 0)
            {
                unsignedValue >>= 1;
                bits++;
            }

            return bits;
        }
    }

}
