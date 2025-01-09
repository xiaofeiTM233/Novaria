using System.Reflection;
using Microsoft.AspNetCore.Server.Kestrel.Core;
using Pb;
using Serilog;

namespace NTR.SDKServer
{
    public class SDKServer
    {
        public static void Main(string[] args)
        {
            byte[] serverlistResponse = new byte[]
{
    8, 37, 18, 56, 10, 12, 229, 144, 175, 230, 152, 142, 230, 181, 139, 232,
    175, 149, 18, 36, 104, 116, 116, 112, 115, 58, 47, 47, 110, 111, 118, 97,
    46, 121, 111, 115, 116, 97, 114, 46, 99, 110, 47, 97, 103, 101, 110, 116,
    45, 122, 111, 110, 101, 45, 49, 47, 24, 1, 32, 1, 24, 1, 34, 52, 230, 181,
    139, 232, 175, 149, 229, 176, 154, 230, 156, 170, 229, 188, 128, 229, 167,
    139, 239, 188, 140, 233, 162, 132, 232, 174, 161, 229, 188, 128, 230, 156,
    141, 230, 151, 182, 233, 151, 180, 49, 230, 156, 136, 57, 230, 151, 165,
    49, 49, 58, 48, 48, 50, 30, 104, 116, 116, 112, 115, 58, 47, 47, 110, 111,
    118, 97, 46, 121, 111, 115, 116, 97, 114, 46, 99, 110, 47, 114, 101, 112,
    111, 114, 116, 47
};

            ServerListMeta serverListMeta = ServerListMeta.Parser.ParseFrom(serverlistResponse);

            Console.WriteLine(serverListMeta);
        
            System.IO.File.WriteAllText("E:\\documents\\Decompiling\\Extracted\\NOVA\\PS\\NTR.SDKServer\\serverlist.json", serverListMeta.ToString());

            return;
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
