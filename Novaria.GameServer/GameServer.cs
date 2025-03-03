using System.Reflection;
using Microsoft.AspNetCore.Server.Kestrel.Core;
using Serilog;

using Novaria.GameServer.Controllers.Api.ProtocolHandlers;
using Novaria.Common.Crypto;

namespace Novaria.GameServer
{
    public class GameServer
    {
        public static void Main(string[] args)
        {
            PcapParser.PcapParser.Instance.LoadAllPackets(); // turn this off after real handlers are finished
            
            // IDK how to dump
            /*Log.Warning("Dumping Data.....");
            var tables = Assembly.GetExecutingAssembly()
                .GetTypes()
                .Where(t => t.Name.StartsWith("table_"));

            foreach (var file in Directory.GetFiles("../Novaria.Common/dataBin/"))
            {
                Log.Information(file);
                var data = new GameDataExtraction().LoadCommonBinData(file);
                Log.Information(data.ToString());
            }*/

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
