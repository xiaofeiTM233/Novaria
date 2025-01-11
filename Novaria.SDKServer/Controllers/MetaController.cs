using Google.Protobuf;
using Microsoft.AspNetCore.Mvc;
using Novaria.Common.Crypto;
using Novaria.Common.Utils;
using Pb;
using Serilog;

namespace Novaria.SDKServer.CoNovariaollers
{
    [ApiController]
    [Route("/meta")]
    public class MetaController : ControllerBase
    {
        [Route("serverlist.html")]
        public IActionResult GetServerlist()
        {
            ServerListMeta serverListMeta = new ServerListMeta()
            {
                Version = 37,
                Status = 0,
                Message = "测试尚未开始，预计开服时间1月9日11:00",
                ReportEndpoint = "https://nova.yostar.cn/report/",
            };

            serverListMeta.Agent.Add(new ServerAgent()
            {
                Name = "启明测试",
                Addr = "https://nova.yostar.cn/agent-zone-1/",
                Status = 0,
                Zone = 1,
            });

            // seems like IV is sent as the first 16 bytes, and key is hardcoded in client
            // response = [IV, protobuf_serialized_data]
            byte[] encrypted_content = AeadTool.EncryptAesCBCInfo(AeadTool.DEFAULT_SERVERLIST_KEY, AeadTool.DEFAULT_SERVERLIST_IV, serverListMeta.ToByteArray());

            byte[] response = Utils.CombineByteArrays(AeadTool.DEFAULT_SERVERLIST_IV, encrypted_content);

            Log.Information("Response bytes:");
            return File(response, "text/html");
        }
    }
}

