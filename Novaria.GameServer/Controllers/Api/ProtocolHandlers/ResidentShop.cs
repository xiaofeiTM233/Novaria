using Novaria.Common.Core;
using Proto;
using Serilog;

namespace Novaria.GameServer.Controllers.Api.ProtocolHandlers
{
    public class ResidentShop : ProtocolHandlerBase
    {
        public ResidentShop(IProtocolHandlerFactory protocolHandlerFactory) : base(protocolHandlerFactory)
        {

        }

        [ProtocolHandler(NetMsgId.resident_shop_get_req)] // req id goes here
        public Packet ResidentShopGetHandler(ResidentShopGetReq req)
        {
            ResidentShopGetResp resp = new ResidentShopGetResp();

            resp.Shops.Add(new Proto.ResidentShop() { Id = 1, RefreshTime = 1 });
            resp.Shops.Add(new Proto.ResidentShop() { Id = 2, RefreshTime = 1 });
            resp.Shops.Add(new Proto.ResidentShop() { Id = 3, RefreshTime = 1 });

            return Packet.Create(NetMsgId.resident_shop_get_succeed_ack, resp);
        }
    }
}
