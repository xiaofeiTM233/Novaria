using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Pb;

namespace NTR.SDKServer.Controllers
{
    [ApiController]
    [Route("/")]
    public class LauncherSDKController : ControllerBase
    {
        private readonly ILogger<LauncherSDKController> _logger;

        public LauncherSDKController(ILogger<LauncherSDKController> logger)
        {
            _logger = logger;
        }

        [Route("meta/serverlist.html")]
        public IActionResult GetConfig()
        {
            Console.WriteLine("serverlist get received!");
            //https://nova-static.yostar.cn/meta/serverlist.html

            ServerListMeta serverListMeta = new ServerListMeta()
            {
                Status = 200,
                Announcement = "sdjsldkfsf",
            };



            var responseContent = System.IO.File.ReadAllBytes("E:\\documents\\Decompiling\\Extracted\\NOVA\\PS\\NTR.SDKServer\\bodyencrypted"); 

            Console.WriteLine("responseContent: " + responseContent);
            var responseHeaders = new HeaderDictionary
            {
                { "Server", "Tengine" },
                { "Content-Type", "text/html; charset=utf-8" },
                { "Content-Length", responseContent.Length.ToString() },
                { "Connection", "keep-alive" },
                { "Date", DateTime.UtcNow.ToString("R") },
                { "x-oss-request-id", "677E5AB989F0063436699689" },
                { "x-oss-cdn-auth", "success" },
                { "Accept-Ranges", "bytes" },
                { "ETag", "\"F7BF56AF4420F308AE12106BDE15B4A0\"" },
                { "Last-Modified", DateTime.UtcNow.AddHours(-8).ToString("R") },
                { "x-oss-object-type", "Normal" },
                { "x-oss-hash-crc64ecma", "15118450623091409826" },
                { "x-oss-storage-class", "Standard" },
                { "Content-MD5", "979Wr0Qg8wiuEhBr3hW0oA==" },
                { "x-oss-server-time", "50" },
                { "Via", "ens-cache14.l2us3[1761,1761,200-0,M], ens-cache29.l2us3[1762,0], ens-cache15.us23[0,0,200-0,H], ens-cache9.us23[13,0]" },
                { "Age", "17639" },
                { "Ali-Swift-Global-Savetime", "1736334009" },
                { "X-Cache", "HIT TCP_HIT dirn:10:384655405" },
                { "X-Swift-SaveTime", DateTime.UtcNow.ToString("R") },
                { "X-Swift-CacheTime", "93312000" },
                { "Timing-Allow-Origin", "*" },
                { "EagleId", "0826799d17363516484194117e" }
            };

            //var response = new ContentResult
            //{
            //    Content = responseContent,
            //    ContentType = "text/html; charset=utf-8",
            //    StatusCode = 200
            //};

            //foreach (var header in responseHeaders)
            //{
            //    Response.Headers[header.Key] = header.Value;
            //}

            return null;
        }
        
        [HttpGet("{*catchAll}")]
        public IResult CatchAllGet(string catchAll)
        {
            _logger.LogDebug($"HttpGet: {catchAll}");
            return Results.Empty;
        }

        [HttpPost("{*catchAll}")]
        public IResult CatchAllPost(string catchAll)
        {
            _logger.LogDebug($"HttpGet: {catchAll}");
            return Results.Empty;
        }
    }
}

