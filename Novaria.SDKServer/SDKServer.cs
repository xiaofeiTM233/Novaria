using System.Collections;
using System.Reflection;
using Google.Protobuf;
using Google.Protobuf.Reflection;
using Microsoft.AspNetCore.Server.Kestrel.Core;
using Novaria.Common.Crypto;
using Novaria.Common.Utils;
using Novaria.Common.Core;
using Proto;
using Serilog;
using System.Text;
using System.Text.Json;
using System.Text.Json.Nodes;
using System.Text.Json.Serialization;
using Microsoft.AspNetCore.Http;
using System.IO;
using NSec.Cryptography;
using static System.Runtime.InteropServices.JavaScript.JSType;

namespace Novaria.SDKServer
{
    public class SDKServer
    {
        //public Packet ParseIkeMessage(byte[] encryptedRawPayload)
        //{

        //}

        public static void Main(string[] args)
        {
            //byte[] result = new byte[] { 72, 115, 142, 228, 125, 80, 99, 136, 69, 104, 100, 1, 40, 52, 96, 130, 76, 79, 164, 172, 151, 94, 234, 141, 235, 198, 110, 211, 218, 213, 155, 111, 64, 170, 181, 53, 117, 77, 234, 162, 247, 154, 219, 157, 50, 59, 84, 148, 165, 122, 236, 76, 15, 134, 140, 229, 224, 105, 90, 2, 226, 240, 240, 16, 6, 209, 29, 11, 52, 224, 26, 174, 113, 114, 54, 169, 108, 63, 53, 170, 94, 142, 153, 65, 192, 116, 145, 127, 107, 137, 193, 141, 203, 149, 9, 188, 91, 78, 191, 117, 145, 14, 105, 108, 203, 106, 161, 97, 133, 123, 132, 205, 151, 184, 240, 165 };
            
            //byte[] key = new byte[] { 51, 76, 83, 57, 38, 111, 89, 100, 115, 112, 94, 53, 119, 105, 56, 38, 90, 120, 67, 35, 99, 55, 77, 90, 103, 55, 51, 104, 98, 69, 68, 119 };
            //byte[] nonce = new byte[] { 50, 103, 122, 81, 54, 57, 80, 109, 55, 49, 86, 55 };
            //byte[] data = new byte[] { 0, 1, 10, 96, 30, 72, 185, 252, 24, 18, 102, 148, 64, 6, 58, 221, 16, 109, 243, 95, 183, 216, 77, 49, 124, 134, 97, 3, 136, 61, 184, 215, 41, 126, 194, 60, 133, 13, 82, 220, 41, 147, 27, 174, 137, 10, 6, 222, 251, 18, 201, 192, 53, 249, 223, 27, 67, 209, 125, 129, 139, 32, 32, 225, 233, 158, 23, 191, 187, 238, 129, 226, 180, 85, 152, 50, 137, 33, 65, 129, 225, 180, 154, 172, 39, 177, 136, 36, 141, 168, 43, 144, 155, 99, 85, 21, 213, 194, 139, 112 };

            //byte[] real_result = new byte[result.Length];
            //byte[] decrypted_result = new byte[data.Length];

            //AeadTool.Encrypt_ChaCha20(real_result, key.AsSpan(), nonce.AsSpan(), data.AsSpan(), true);
            //Console.WriteLine();
            //Console.WriteLine();

            //Utils.PrintByteArray(result);
            //Console.WriteLine();
            //Console.WriteLine();
            //Utils.PrintByteArray(real_result);
            //byte[] associateData = new byte[13];

            //nonce.CopyTo(associateData, 0);
            //associateData[associateData.Length - 1] = 1;

            //bool succ = AeadTool.Dencrypt_ChaCha20(decrypted_result.AsSpan(), key.AsSpan(), nonce.AsSpan(), result.AsSpan(), associateData.AsSpan());

            //Console.WriteLine(succ);
            //Utils.PrintByteArray(decrypted_result);

            //return;
            //byte[] ike_req_bytes = new byte[] { 10, 96, 108, 183, 187, 238, 19, 29, 80, 121, 193, 82, 107, 114, 202, 58, 16, 52, 131, 72, 179, 174, 18, 170, 8, 124, 161, 231, 241, 121, 27, 190, 176, 218, 90, 9, 9, 88, 190, 59, 190, 128, 9, 247, 199, 212, 136, 3, 198, 175, 89, 222, 172, 222, 157, 99, 247, 254, 237, 66, 68, 238, 188, 125, 169, 248, 17, 130, 150, 12, 213, 10, 197, 36, 122, 134, 139, 88, 52, 177, 53, 38, 114, 145, 99, 40, 111, 82, 237, 245, 178, 106, 108, 170, 57, 235, 136, 25 };
            //byte[] player_login_req_bytes = new byte[] { 106, 8, 79, 102, 102, 105, 99, 105, 97, 108, 26, 48, 8, 240, 186, 151, 225, 3, 18, 40, 50, 50, 97, 99, 56, 56, 54, 101, 53, 102, 98, 101, 101, 102, 52, 100, 98, 98, 56, 100, 56, 51, 54, 100, 56, 98, 99, 98, 49, 54, 54, 54, 56, 100, 98, 55, 99, 97, 55, 100, 98, 5, 122, 104, 95, 67, 78, 120, 1, 114, 16, 100, 99, 49, 56, 101, 49, 50, 98, 57, 54, 50, 57, 101, 57, 52, 101, 88, 2 };

            byte[] ike_req_raw_bytes = new byte[] { 50, 103, 122, 81, 54, 57, 80, 109, 55, 49, 86, 55, 1, 72, 115, 142, 228, 125, 80, 99, 136, 69, 104, 100, 1, 40, 52, 96, 130, 76, 79, 164, 172, 151, 94, 234, 141, 235, 198, 110, 211, 218, 213, 155, 111, 64, 170, 181, 53, 117, 77, 234, 162, 247, 154, 219, 157, 50, 59, 84, 148, 165, 122, 236, 76, 15, 134, 140, 229, 224, 105, 90, 2, 226, 240, 240, 16, 6, 209, 29, 11, 52, 224, 26, 174, 113, 114, 54, 169, 108, 63, 53, 170, 94, 142, 153, 65, 192, 116, 145, 127, 107, 137, 193, 141, 203, 149, 9, 188, 91, 78, 191, 117, 145, 14, 105, 108, 203, 106, 161, 97, 133, 123, 132, 205, 151, 184, 240, 165 };
            ike_req_raw_bytes = new byte[] { 238, 229, 238, 9, 37, 193, 132, 180, 61, 153, 199, 186, 4, 244, 254, 140, 91, 117, 71, 80, 159, 135, 140, 203, 228, 77, 27, 179, 254, 183, 72, 176, 185, 189, 30, 193, 34, 117, 133, 225, 239, 52, 174, 149, 44, 203, 37, 116, 83, 34, 75, 49, 105, 102, 145, 145, 115, 125, 172, 100, 65, 173, 57, 198, 79, 9, 134, 169, 31, 138, 51, 247, 255, 85, 206, 195, 234, 144, 11, 167, 183, 159, 116, 21, 251, 193, 223, 68, 116, 202, 26, 223, 20, 101, 176, 136, 156, 88, 127, 113, 169, 34, 76, 180, 3, 157, 201, 127, 241, 46, 61, 56, 25, 18, 187, 103, 34, 64, 7, 115, 227, 135, 159, 149, 199, 166, 11, 119, 122, 225, 23, 134, 5, 63, 21, 182, 106, 94, 200, 13, 63, 231, 212, 51, 255, 81, 237, 238, 4, 156, 94, 149, 215, 120, 81, 14, 191, 209, 237, 139, 209, 238, 130, 202, 51, 63, 238, 214, 68, 109, 114, 108, 191, 208, 255, 32, 171, 246, 208, 139, 6, 223, 0, 120, 1, 104, 44, 82, 72, 129, 181, 237, 8, 213, 196, 193, 87, 114, 247, 12, 12, 218, 159, 182, 248, 63, 22, 207, 124, 217, 93, 121, 0, 49, 49, 237, 167, 215, 85, 173, 89, 152, 81, 151, 134, 240, 142, 208, 89, 9, 103, 243, 130, 221, 142, 44, 141, 64, 254, 215, 116, 155, 127, 32, 108, 178, 226 };
            //ike_req_raw_bytes = File.ReadAllBytes("E:\\documents\\Decompiling\\Extracted\\NOVA\\Novaria\\Novaria.SDKServer\\options_req");
            Console.WriteLine(ike_req_raw_bytes.Length);
            
            bool flag = false;

            Utils.PrintByteArray(ike_req_raw_bytes);

            BinaryReader reader = new BinaryReader(new MemoryStream(ike_req_raw_bytes));

            byte[] nonceBytes = new byte[12];
            reader.Read(nonceBytes);

            byte[] aheadmarkBytes = new byte[1];
            int payloadSize = ike_req_raw_bytes.Length - nonceBytes.Length;

            if (flag)
            {
                reader.Read(aheadmarkBytes);
                payloadSize--;
            }

            byte[] packetBytes = new byte[payloadSize];
            reader.Read(packetBytes);

            if (reader.BaseStream.Position != ike_req_raw_bytes.Length)
            {
                Console.WriteLine("something went wrong, not all the bytes were read");
                Console.WriteLine("reader pos: " + reader.BaseStream.Position);
                Console.WriteLine("original len:" + ike_req_raw_bytes.Length);
            }

            Span<byte> decrypt_result = new Span<byte>(new byte[payloadSize - 16]);

            Span<byte> nonce = nonceBytes.AsSpan();
            Span<byte> packet_data = packetBytes.AsSpan();

            Console.WriteLine($"Nonce[{nonce.Length}]");
            Utils.PrintByteArray(nonce.ToArray());

            Console.WriteLine($"packet_data[{packet_data.Length}]: ");
            Utils.PrintByteArray(packet_data.ToArray());

            Console.WriteLine($"key[{AeadTool.FIRST_IKE_KEY.Length}]: ");
            Utils.PrintByteArray(AeadTool.FIRST_IKE_KEY.ToArray());

            Console.WriteLine($"Decrypted bytes[{decrypt_result.Length}]: ");

            byte[] associateData = new byte[13];

            nonceBytes.CopyTo(associateData, 0);
            associateData[associateData.Length - 1] = 1;

            
            bool success = AeadTool.Dencrypt_ChaCha20(decrypt_result, AeadTool.FIRST_IKE_KEY, nonce, packet_data, null);
            Console.WriteLine("sucess: " + success);
            Utils.PrintByteArray(decrypt_result.ToArray());

            byte[] decrypted_bytes = decrypt_result.ToArray();
            Utils.PrintByteArray(decrypted_bytes);

            byte[] msgid_bytes = decrypted_bytes[..2];
            Array.Reverse<byte>(msgid_bytes);

            short msgId = BitConverter.ToInt16(msgid_bytes);

            Packet packet = new Packet()
            {
                msgId = msgId,
                msgBody = decrypted_bytes[2..],
            };

            Console.WriteLine("msgid: " + msgId);
            Console.WriteLine("msgBody length: " + packet.msgBody.Length);

            var packetObj = IKEResp.Parser.ParseFrom(packet.msgBody);


            //var ikereq = IKEReq.Parser.ParseFrom(ike_req_bytes);

            //var loginreq = LoginReq.Parser.ParseFrom(player_login_req_bytes);

            Console.WriteLine(JsonSerializer.Serialize(packetObj));

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
