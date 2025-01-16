from mitmproxy import http
from mitmproxy import ctx
from mitmproxy.proxy import layer

def load(loader):
    ctx.options.connection_strategy = "lazy"
    ctx.options.upstream_cert = False
    ctx.options.ssl_insecure = True
    ctx.options.allow_hosts = ['nova-static.yostar.cn', 'nova.yostar.cn', 'sdk-api.yostar.cn', 'static-stellasora.yostar.net', "udata-api.open.yostar.net"]
    
def next_layer(nextlayer: layer.NextLayer):
    sni = nextlayer.context.client.sni
    if sni and (sni.endswith("nova.yostar.cn") or sni.endswith("sdk-api.yostar.cn") or sni.endswith("static-stellasora.yostar.net") or sni.endswith("udata-api.open.yostar.net")):
        ctx.log('sni:' + sni)
        nextlayer.context.server.address = ("192.168.86.32", 443)
    
def request(flow: http.HTTPFlow) -> None:
    if (flow.request.host_header.endswith("nova-static.yostar.cn")) and ("serverlist.html" not in flow.request.path_components) and ("and.html" not in flow.request.path_components):
        flow.request.host = "nova-static.duckdns.org"
        flow.request.port = 443

    if ("serverlist.html" in flow.request.path_components or "and.html" in flow.request.path_components):
        flow.request.host = "192.168.86.32"
        flow.request.port = 443 