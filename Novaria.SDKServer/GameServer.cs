using System.Reflection;
using Microsoft.AspNetCore.Server.Kestrel.Core;
using Novaria.Common.Crypto;
using Novaria.Common.Core;
using Proto;
using Serilog;

using Novaria.GameServer.Controllers.Api.ProtocolHandlers;
using Novaria.Common.Util;
using System.Numerics;
using Microsoft.AspNetCore.DataProtection;
using System.Text;
using System.Text.Json;

namespace Novaria.GameServer
{
    public class GameServer
    {
        public static void Main(string[] args)
        {
            byte[] spub = new byte[] { 0, 219, 176, 103, 73, 245, 239, 125, 227, 240, 79, 51, 62, 250, 113, 143, 251, 155, 158, 45, 101, 1, 6, 185, 140, 153, 221, 163, 200, 112, 161, 11, 138, 163, 7, 71, 182, 127, 144, 192, 147, 169, 124, 54, 220, 208, 253, 121, 80, 41, 4, 97, 51, 129, 32, 228, 40, 227, 89, 226, 152, 51, 24, 105, 233, 140, 153, 114, 142, 244, 105, 13, 201, 150, 39, 192, 101, 50, 39, 57, 59, 110, 88, 201, 150, 221, 251, 248, 247, 250, 33, 114, 125, 200, 182, 163, 176 };
            byte[] cpriv = new byte[] { 10,128,76,30};

            byte[] res = DiffieHellman.Instance.CalculateKey(spub, cpriv);

            Utils.PrintByteArray(res);
            Log.Information("Starting SDK Server...");
            try
            {
                var builder = WebApplication.CreateBuilder(args);

                builder.Services.Configure<KestrelServerOptions>(op =>
                    op.AllowSynchronousIO = true
                );
                builder.Host.UseSerilog();

                builder.Services.AddControllers();
                builder.Services.AddProtocolHandlerFactory();
                builder.Services.AddControllers().AddApplicationPart(Assembly.GetAssembly(typeof(GameServer)));

                // Add all Handler Groups
                var handlerGroups = Assembly.GetAssembly(typeof(ProtocolHandlerFactory))
                    .GetTypes()
                    .Where(t => t.IsSubclassOf(typeof(ProtocolHandlerBase)));

                foreach (var handlerGroup in handlerGroups)
                {
                    builder.Services.AddProtocolHandlerGroupByType(handlerGroup);
                }

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
