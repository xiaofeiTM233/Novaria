using Microsoft.AspNetCore.Mvc;
using Serilog;

namespace Novaria.SDKServer.CoNovariaollers
{
    [ApiController]
    [Route("/user")]
    public class SDKController : ControllerBase
    {
        [Route("login")]
        public IResult PostLogin()
        {
            Log.Information("post login received!");
            return Results.Text(@"
{
    ""Code"": 200,
    ""Data"": {},
    ""Msg"": ""夏萝莉是小楠梁""
}
");
        }
    }
}
