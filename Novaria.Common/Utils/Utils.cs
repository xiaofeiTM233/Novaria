using Google.Protobuf.Reflection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Novaria.Common.Utils
{
    public static class Utils
    {

        public static void SaveFileDescriptorProtoToFile(FileDescriptorProto fileDescriptorProto, string outputDirectory)
        {
            if (fileDescriptorProto == null)
            {
                throw new ArgumentNullException(nameof(fileDescriptorProto));
            }

            if (string.IsNullOrEmpty(outputDirectory))
            {
                throw new ArgumentException("Output directory cannot be null or empty", nameof(outputDirectory));
            }

            string protoName = fileDescriptorProto.Name ?? "unknown.proto";
            string protoContent = fileDescriptorProto.ToString();
            
            string outputPath = Path.Combine(outputDirectory, protoName);

            Directory.CreateDirectory(Path.GetDirectoryName(outputPath));

            File.WriteAllText(outputPath, protoContent);

            Console.WriteLine($"Saved {protoName} to {outputPath}");
        }

        public static void PrintByteArray(byte[] byteArray)
        {
            if (byteArray == null || byteArray.Length == 0)
            {
                Console.WriteLine("[]");
                return;
            }

            Console.WriteLine(string.Join(",", byteArray));
        }

        public static byte[] CombineByteArrays(byte[] array1, byte[] array2)
        {
            byte[] combined = new byte[array1.Length + array2.Length];
            Buffer.BlockCopy(array1, 0, combined, 0, array1.Length);
            Buffer.BlockCopy(array2, 0, combined, array1.Length, array2.Length);

            return combined;
        }
    }
}
