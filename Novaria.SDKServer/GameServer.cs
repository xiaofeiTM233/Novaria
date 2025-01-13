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
            //AeadTool.key3 = new byte[] { 73, 90, 77, 19, 136, 20, 253, 207, 122, 182, 60, 5, 199, 187, 85, 43, 151, 253, 66, 167, 119, 12, 188, 145, 201, 3, 109, 105, 74, 79, 15, 128 };

            //PcapParser.PcapParser.Instance.Parse("first_instant_join.json");
            //PlayerInfo pcapPlayerInfo = (PlayerInfo)PcapParser.PcapParser.Instance.GetPcapPacket(NetMsgId.player_data_succeed_ack);

            //PlayerInfo playerInfoResponse = new PlayerInfo()
            //{
            //    Acc = pcapPlayerInfo.Acc
            //};

            //Packet responsePacket = (Packet)Packet.Create(NetMsgId.player_data_succeed_ack, playerInfoResponse);
            // maybe just change invoke to return Packet

            //Log.Information($"Response Packet msgid: {responsePacket.msgId}: {(short)responsePacket.msgId}");

            //byte[] responsePackeBytes = HttpNetworkManager.Instance.BuildResponse(responsePacket);

            //Log.Information("Sending player_new_notify packet: " + JsonSerializer.Serialize(playerInfoResponse));


            //byte[] msg = new byte[] { 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 232, 13, 20, 241, 195, 53, 16, 138, 92, 58, 13, 230, 14, 119, 182, 230, 176, 64, 62, 155, 236, 97, 245, 1, 174, 23, 193, 236, 234, 144, 239, 35, 81, 123, 139, 14, 210, 111, 95, 34, 189, 41, 249, 84, 15, 148, 108, 132, 84, 145, 10, 49, 248, 185, 159, 200, 159, 109, 209, 96, 226, 56, 130, 86, 2, 157, 30, 225, 221, 44, 35, 26, 240, 23, 250, 248, 149, 129, 42, 123, 73, 38, 145, 178, 23, 33, 211, 20, 155, 92, 12, 210, 9, 4, 137, 139, 32, 9, 95, 48, 174, 99, 132, 63, 118, 60, 244, 92, 85, 182, 38, 188, 205, 89, 23, 233, 35, 124, 110, 110, 236, 99, 216, 83, 250, 82, 184, 197, 149, 210, 205, 200, 214, 126, 40, 79, 122, 125, 225, 110, 108, 152, 164, 70, 114, 237, 100, 164, 156, 0, 231, 96, 42, 186, 136, 92, 26, 145, 166, 120, 56, 114, 6, 255, 130, 252, 98, 0, 48, 119, 51, 76, 145, 203, 84, 27, 200, 106, 76, 152, 12, 193, 118, 211, 15, 114, 250, 32, 218, 188, 126, 5, 19, 208, 83, 7, 39, 78, 70, 146, 146, 255, 74, 224, 247, 210, 93, 50, 28, 176, 114, 237, 187, 6, 166, 104, 252, 157, 187, 223, 208, 7, 253, 95, 245, 211, 63, 201, 233, 106, 12, 9, 176, 122, 204, 32, 198, 154, 219, 175, 32, 220, 97, 244, 123, 224, 143, 167, 131, 222, 199, 205, 76, 102, 130, 13, 65, 221, 52, 117, 155, 33, 80, 23, 177, 171, 245, 65, 102, 113, 180, 87, 78, 132, 163, 152, 75, 99, 41, 231, 250, 255, 18, 44, 227, 250, 217, 164, 90, 205, 95, 42, 115, 195, 201, 77, 147, 193, 208, 171, 244, 75, 193, 70, 81, 48, 12, 223, 40, 74, 167, 78, 130, 239, 85, 127, 175, 180, 223, 74, 50, 50, 29, 40, 72, 9, 201, 187, 249, 216, 206, 157, 206, 237, 238, 124, 247, 215 };

            //HttpNetworkManager.Instance.ParseRequest(msg);


            //return;
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
