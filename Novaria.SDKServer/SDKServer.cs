using System.Reflection;
using Microsoft.AspNetCore.Server.Kestrel.Core;
using Novaria.Common.Crypto;
using Novaria.Common.Core;
using Proto;
using Serilog;

using Novaria.SDKServer.Controllers.Api.ProtocolHandlers;
using Novaria.Common.Util;
using System.Numerics;
using Microsoft.AspNetCore.DataProtection;
using System.Text;

namespace Novaria.SDKServer
{
    public class SDKServer
    {
        public static void Main(string[] args)
        {
            //    BigInteger p = BigInteger.Parse("1552518092300708935130918131258481755631334049434514313202351194902966239949102107258669453876591642442910007680288864229150803718918046342632727613031282983744380820890196288509170691316593175367469551763119843371637221007210577919");
            //    BigInteger g = 2;

            //    byte[] cprivBytes = new byte[] { 40, 155, 225, 54 }.Reverse().ToArray();
            //    BigInteger cpriv = new BigInteger(cprivBytes);

            //    byte[] spubBytes = new byte[] {
            //    100, 141, 208, 69, 213, 140, 78, 33, 138, 99, 79, 253, 190, 117, 15, 56,
            //    17, 222, 37, 150, 138, 74, 93, 159, 17, 17, 178, 23, 44, 140, 32, 73,
            //    170, 24, 92, 31, 123, 53, 174, 72, 7, 70, 248, 248, 223, 0, 69, 92,
            //    72, 152, 30, 173, 95, 36, 76, 19, 213, 82, 134, 122, 182, 190, 153, 145,
            //    5, 116, 66, 91, 123, 140, 191, 23, 162, 169, 48, 142, 252, 184, 200, 25,
            //    94, 34, 174, 238, 100, 171, 37, 30, 65, 63, 37, 106, 127, 116, 168, 36
            //}.Reverse().ToArray();
            //    BigInteger spub = new BigInteger(spubBytes);

            //    BigInteger secret = BigInteger.ModPow(spub, cpriv, p);

            //    Utils.PrintByteArray(secret.ToByteArray(true, true)[..32]);

            //byte[] cpriv = new byte[] { 40, 155, 225, 54 };
            //byte[] spub = new byte[] { 176, 163, 182, 200, 125, 114, 33, 250, 247, 248, 251, 221, 150, 201, 88, 110, 59, 57, 39, 50, 101, 192, 39, 150, 201, 13, 105, 244, 142, 114, 153, 140, 233, 105, 24, 51, 152, 226, 89, 227, 40, 228, 32, 129, 51, 97, 4, 41, 80, 121, 253, 208, 220, 54, 124, 169, 147, 192, 144, 127, 182, 71, 7, 163, 138, 11, 161, 112, 200, 163, 221, 153, 140, 185, 6, 1, 101, 45, 158, 155, 251, 143, 113, 250, 62, 51, 79, 240, 227, 125, 239, 245, 73, 103, 176, 219, 0 };

            //byte[] result = DiffieHellman.Instance.CalculateKey(spub);

            //Utils.PrintByteArray(result);

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
                builder.Services.AddControllers().AddApplicationPart(Assembly.GetAssembly(typeof(SDKServer)));

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
