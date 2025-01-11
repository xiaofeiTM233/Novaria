using System.Collections;
using System.Reflection;
using Google.Protobuf;
using Google.Protobuf.Reflection;
using Microsoft.AspNetCore.Server.Kestrel.Core;
using Newtonsoft.Json;
using Novaria.Common.Crypto;
using Novaria.Common.Utils;
using Pb;
using Serilog;

namespace Novaria.SDKServer
{
    public class SDKServer
    {
        public static void Main(string[] args)
        {
            var protos = FileDescriptorSet.Parser.ParseFrom(PB.ProtoPB);
            var tables = FileDescriptorSet.Parser.ParseFrom(PB.TablePB);
            var tempDatas = FileDescriptorSet.Parser.ParseFrom(PB.RogueLikeTempDataPB);

            foreach (var fileDescriptorProto in protos.File)
            {
                
                Console.WriteLine(fileDescriptorProto.ToString());
                //Utils.SaveFileDescriptorProtoToFile(fileDescriptorProto, "protos");
            }

            foreach (var fileDescriptorProto in tables.File)
            {
                //Utils.SaveFileDescriptorProtoToFile(fileDescriptorProto, "tables");
            }

            foreach (var fileDescriptorProto in tempDatas.File)
            {
                //Utils.SaveFileDescriptorProtoToFile(fileDescriptorProto, "temp_datas");
            }

            Span<byte> ss = new byte[]
{
            0, 5, 10, 134, 1, 68, 109, 47, 77, 102, 110, 116, 78, 49, 107, 78,
            97, 83, 47, 49, 79, 110, 121, 51, 86, 82, 76, 100, 90, 67, 69, 113,
            47, 71, 47, 70, 81, 112, 83, 86, 65, 114, 48, 81, 112, 101, 107, 104,
            104, 106, 83, 69, 48, 51, 73, 121, 107, 108, 65, 102, 65, 84, 112, 83,
            56, 85, 80, 76, 107, 76, 103, 48, 80, 119, 116, 80, 48, 67, 78, 86,
            43, 76, 85, 103, 98, 51, 75, 97, 79, 111, 56, 89, 115, 106, 68, 66,
            86, 77, 51, 47, 65, 83, 108, 80, 77, 109, 56, 68, 50, 111, 119, 108,
            71, 119, 106, 81, 83, 71, 105, 54, 106, 79, 97, 102, 99, 49, 122, 84,
            98, 107, 89, 81, 121, 76, 43, 56, 121, 90, 103
};

            Span<byte> result = new byte[ss.Length];

            ReadOnlySpan<byte> key = new byte[]
            {
            21, 218, 151, 4, 236, 175, 191, 183, 193, 244, 248, 163, 11, 144, 99, 164,
            138, 121, 155, 96, 50, 149, 206, 111, 180, 143, 229, 65, 219, 192, 118, 47
            };

            ReadOnlySpan<byte> nonce = new byte[]
            {
            231, 71, 160, 150, 98, 120, 185, 234, 18, 80, 239, 227
            };

            ReadOnlySpan<byte> data = new byte[]
            {
            18, 191, 220, 69, 194, 61, 223, 106, 190, 177, 23, 221, 204, 255, 80, 97,
            197, 131, 41, 185, 42, 139, 225, 133, 223, 140, 11, 43, 152, 78, 4, 163,
            87, 50, 33, 61, 168, 219, 213, 188, 78, 115, 60, 143, 185, 165, 3, 62,
            154, 34, 156, 61, 175, 105, 25, 129, 254, 143, 225, 107, 211, 9, 201, 7,
            10, 85, 115, 115, 131, 209, 20, 48, 124, 149, 33, 52, 204, 166, 154, 207,
            206, 28, 76, 249, 48, 191, 249, 11, 236, 193, 49, 216, 226, 101, 52, 234,
            73, 79, 154, 226, 141, 9, 70, 194, 252, 202, 65, 168, 247, 161, 228, 84,
            246, 133, 84, 64, 64, 252, 55, 44, 5, 164, 143, 110, 140, 232, 125, 91,
            244, 62, 170, 18, 0, 212, 72, 235, 250, 85, 143, 89, 26, 162, 186, 243,
            4, 222, 193, 249, 215, 243, 155, 204, 88, 131, 145
            };

            AeadTool.Dencrypt_ChaCha20(result, key, nonce, data);

            Utils.PrintByteArray(result.ToArray());

            return;
            //byte[] bytes = File.ReadAllBytes("E:\\documents\\Decompiling\\Extracted\\NOVA\\Novaria\\Novaria.SDKServer\\req1");

            //            byte[] data = new byte[] {
            //    88, 2, 120, 1, 106, 8, 79, 102, 102, 105, 99, 105, 97, 108,
            //    98, 5, 122, 104, 95, 67, 78, 114, 16, 100, 99, 49, 56, 101,
            //    49, 50, 98, 57, 54, 50, 57, 101, 57, 52, 101, 26, 48, 18,
            //    40, 50, 50, 97, 99, 56, 56, 54, 101, 53, 102, 98, 101, 101,
            //    102, 52, 100, 98, 98, 56, 100, 56, 51, 54, 100, 56, 98, 99,
            //    98, 49, 54, 54, 54, 56, 100, 98, 55, 99, 97, 55, 100, 8,
            //    240, 186, 151, 225, 3
            //};

            //var a = UserRequest.Parser.ParseFrom(data);

            //Console.WriteLine(JsonConvert.SerializeObject(a));

            //ServerListMeta message;

            //using (var input = File.OpenRead("E:\\documents\\Decompiling\\Extracted\\NOVA\\Novaria\\Novaria.SDKServer\\test_protos.pb"))
            //{
            //    message = ServerListMeta.Parser.ParseFrom(input);
            //}

            //Console.WriteLine(message.Announcement);

            //return;

            //byte[] bytes = File.ReadAllBytes("E:\\documents\\Decompiling\\Extracted\\NOVA\\Novaria\\Novaria.SDKServer\\req1");

            //byte[] result = AeadTool.DecryptAesCBCInfo(AeadTool.DEFAULT_SERVERLIST_KEY, bytes[..16], bytes[16..(((int)(bytes.Length / 16)) * 16)]);

            ////Utils.PrintByteArray(result);
            //string resstr = System.Text.Encoding.UTF8.GetString(result);
            //Console.WriteLine(resstr); // Output: "Hello"
            Log.Information("Starting SDK Server...");
            try
            {
                var builder = WebApplication.CreateBuilder(args);

                builder.Services.Configure<KestrelServerOptions>(op =>
                    op.AllowSynchronousIO = true
                );
                builder.Host.UseSerilog();

                builder.Services.AddControllers();
                builder.Services.AddControllers().AddApplicationPart(Assembly.GetAssembly(typeof(SDKServer)));

                var app = builder.Build();

                app.UseAuthorization();
                app.UseSerilogRequestLogging();

                app.MapControllers();
                app.Run();
            }
            catch (Exception ex)
            {
                Log.Fatal(ex, "An unhandled exception occurred during runtime");
            }
            finally
            {
                Log.CloseAndFlush();
            }
        }
    }
}
