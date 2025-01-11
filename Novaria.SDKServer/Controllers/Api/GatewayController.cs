using Microsoft.AspNetCore.Mvc;
using Novaria.Common.Crypto;
using System.Text.Json.Nodes;
using System.Text.Json.Serialization;
using System.Text.Json;
using System.Text;
using Serilog;
using Novaria.Common.Utils;
using System.IO;
using System.Numerics;
using System.Security.Cryptography;
using Microsoft.AspNetCore.Http;

namespace Novaria.SDKServer.Controllers.Api
{
    [Route("/agent-zone-1")]
    public class GatewayController : ControllerBase
    {
        public int req_count;

        [HttpPost]
        public IActionResult PostRequest()
        {
            //var memoryStream = new MemoryStream();

            //Request.Body.CopyTo(memoryStream);
            //byte[] requestBodyBytes = memoryStream.ToArray();
            //Log.Information("Received Gateway Post Request, Payload: ");
            //Utils.PrintByteArray(requestBodyBytes);

            Response.Headers.Add("Date", DateTime.UtcNow.ToString("R"));
            Response.Headers.Add("Content-Length", "171");
            Response.Headers.Add("Connection", "keep-alive");

            Response.Headers.Append("Set-Cookie", "SERVERID=eef797ff9d3671d413582d7dc2f39f29|1736422941|1736422941;Path=/");
            Response.Headers.Append("Set-Cookie", "SERVERCORSID=eef797ff9d3671d413582d7dc2f39f29|1736422941|1736422941;Path=/;SameSite=None;Secure");

            string filePath = "E:\\documents\\Decompiling\\Extracted\\NOVA\\Novaria\\Novaria.SDKServer\\response1"; // Replace with the actual file path

            if (req_count == 1)
            {
                filePath = "E:\\documents\\Decompiling\\Extracted\\NOVA\\Novaria\\Novaria.SDKServer\\response2"; // Replace with the actual file path
            }

            byte[] fileBytes = System.IO.File.ReadAllBytes(filePath);

            Response.Body.WriteAsync(fileBytes, 0, fileBytes.Length);

            req_count++;

            return new EmptyResult();
        }

        [HttpOptions] // Ike
        public IActionResult OptionsRequest()
        {
            Log.Information("Received Gateway Ike Options Request, Payload: ");

            // store key which is used in AeadTool
            using var memoryStream = new MemoryStream();
            Request.Body.CopyTo(memoryStream); // Copy request body to MemoryStream
            byte[] rawBytes = memoryStream.ToArray();    // Get raw bytes from MemoryStream

            Utils.PrintByteArray(rawBytes);
            //byte[] msgId = BitConverter.GetBytes(msg.msgId);


            //// Set response headers
            //Response.Headers.Add("Date", DateTime.UtcNow.ToString("R"));
            //Response.Headers.Add("Content-Length", "251");
            //Response.Headers.Add("Connection", "keep-alive");

            //// Set cookies
            //Response.Headers.Append("Set-Cookie", "acw_tc=cb6df452e3196d1ec00d2fcdf7726b25ed2accbaa45e1066701a61d2da90b384;path=/;HttpOnly;Max-Age=1800");
            //Response.Headers.Append("Set-Cookie", "SERVERID=eef797ff9d3671d413582d7dc2f39f29|1736422941|1736422941;Path=/");
            //Response.Headers.Append("Set-Cookie", "SERVERCORSID=eef797ff9d3671d413582d7dc2f39f29|1736422941|1736422941;Path=/;SameSite=None;Secure");

            //// Set binary content as the response body
            //string filePath = "E:\\documents\\Decompiling\\Extracted\\NOVA\\Novaria\\Novaria.SDKServer\\options_response"; // Replace with the actual file path
            //byte[] fileBytes = System.IO.File.ReadAllBytes(filePath);

            //// Write bytes directly to response body
            //Response.Body.WriteAsync(fileBytes, 0, fileBytes.Length);

            //// Return no content since the body is written manually
            return new EmptyResult();
        }

        //private DiffieHellmanManaged SendKey;

        //// put in connection prob
        //public static void SetAeadKey(byte[] pubKey) // original lead to HttpNetworkManager
        //{
        //    byte[] array = this.SendKey.DecryptKeyExchange(pubKey);
        //    int num = array.Length;
        //    if (num > 32)
        //    {
        //        num = 32;
        //    }
        //    this.key3 = new byte[32];
        //    Buffer.BlockCopy(array, 0, this.key3, 0, num);
        //    this.HasKey3 = true;
        //    this.seq = 1;
        //}

        //public byte[] DecryptKeyExchange(byte[] keyEx)
        //{
        //    BigInteger bigInteger = new BigInteger(keyEx).ModPow(this.m_X, this.m_P);
        //    byte[] bytes = bigInteger.GetBytes();
        //    bigInteger.Clear();
        //    return bytes;
        //}
    }
}
