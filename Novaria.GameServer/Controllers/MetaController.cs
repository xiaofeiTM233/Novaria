using Google.Protobuf;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Novaria.Common.Crypto;
using Novaria.Common.Util;
using Pb;
using Serilog;
using System.Text.Json;

namespace Novaria.GameServer.Controllers
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

        [Route("and.html")]
        public IActionResult GetAndroid()
        {
            string diffJson = System.IO.File.ReadAllText($"../../../../Novaria.GameServer/and.json"); // disgusting pathing, but "not hardcoded" now ig

            ClientDiff clientDiff = JsonConvert.DeserializeObject<ClientDiff>(diffJson);

            Console.WriteLine(clientDiff.Diff.Count);
            Console.WriteLine(clientDiff.Diff[0].FileName);

            byte[] encrypted_content = AeadTool.EncryptAesCBCInfo(AeadTool.DEFAULT_SERVERLIST_KEY, AeadTool.DEFAULT_AND_IV, clientDiff.ToByteArray());

            byte[] response = Utils.CombineByteArrays(AeadTool.DEFAULT_AND_IV, encrypted_content);

            return File(response, "text/html");
        }
    }
}

