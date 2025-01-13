using Microsoft.AspNetCore.Mvc;
using Serilog;

namespace Novaria.SDKServer.CoNovariaollers
{
    [ApiController]
    [Route("/user")]
    public class UserController : ControllerBase
    {
        [Route("login")]
        public IResult PostLogin()
        {
            Log.Information("post login received!");

            string jsonResponse = @"
{
    ""Code"": 200,
    ""Data"": {
        ""IsNew"": true,
        ""IsTestAccount"": false,
        ""User"": {
            ""DestroyState"": 0,
            ""ID"": 1,
            ""PID"": ""CN-NOVA"",
            ""State"": 1,
            ""Token"": ""f94d936f7235f84493564ee0282e845cccd44828""
        }
    },
    ""Msg"": ""OK""
}
";
            return Results.Text(jsonResponse, "application/json");
        }

        [Route("quick-login")]
        public IResult PostQuickLogin()
        {
            Log.Information("post login received!");

            string jsonResponse = @"
{
    ""Code"": 200,
    ""Data"": {
        ""Destroy"": {
            ""DestroyAt"": 0
        },
        ""Identity"": {
            ""BirthDate"": """",
            ""IDCard"": ""123*********34567*"",
            ""PI"": """",
            ""RealName"": ""**"",
            ""State"": 1,
            ""Type"": 0,
            ""Underage"": false
        },
        ""IsTestAccount"": false,
        ""Keys"": [
            {
                ""NickName"": ""123****4567"",
                ""Type"": ""mobile""
            }
        ],
        ""User"": {
            ""DestroyState"": 0,
            ""ID"": 1,
            ""PID"": ""CN-NOVA"",
            ""State"": 1,
            ""Token"": ""f94d936f723asdasd5f84493564ee0282e845cccd44828""
        },
        ""Yostar"": {
            ""CreatedAt"": 1735902322,
            ""DefaultNickName"": """",
            ""ID"": 1,
            ""NickName"": ""seggs"",
            ""Picture"": """",
            ""State"": 1
        }
    },
    ""Msg"": ""OK""
}
";
            return Results.Text(jsonResponse, "application/json");

        }

        [Route("detail")]
        public IResult PostDetail()
        {
            string jsonResponse = @"
{
    ""Code"": 200,
    ""Data"": {
        ""Destroy"": {
            ""DestroyAt"": 0
        },
        ""Identity"": null,
        ""IsTestAccount"": false,
        ""Keys"": [
            {
                ""NickName"": ""123****4567"",
                ""Type"": ""mobile""
            }
        ],
        ""User"": {
            ""DestroyState"": 0,
            ""ID"": 1,
            ""PID"": ""CN-NOVA"",
            ""State"": 1,
            ""Token"": ""f9s243e483e3e322138""
        },
        ""Yostar"": {
            ""CreatedAt"": 1,
            ""DefaultNickName"": """",
            ""ID"": 1,
            ""NickName"": ""seggs"",
            ""Picture"": """",
            ""State"": 1
        }
    },
    ""Msg"": ""OK""
}
";

            return Results.Text(jsonResponse, "application/json");
        }


    }
}
