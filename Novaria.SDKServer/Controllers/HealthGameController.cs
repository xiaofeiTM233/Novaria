using Microsoft.AspNetCore.Mvc;
using Serilog;

namespace Novaria.GameServer.CoNovariaollers
{
    [ApiController]
    [Route("/health-game")]
    public class HealthGameController : ControllerBase
    {
        [Route("identity-auth")]
        public IResult PostIdentityAuth()
        {
            Log.Information("post login received!");

            string jsonResponse = @"
{
    ""Code"": 200,
    ""Data"": {
        ""Identity"": {
            ""BirthDate"": """",
            ""IDCard"": ""123*********34567*"",
            ""PI"": """",
            ""RealName"": ""**"",
            ""State"": 1,
            ""Type"": 0,
            ""Underage"": false
        }
    },
    ""Msg"": ""OK""
}
";
            return Results.Text(jsonResponse, "application/json");
        }
    }
}
