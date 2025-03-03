from mitmproxy import ctx, http
from mitmproxy.proxy import layer

def load(loader):
    ctx.options.connection_strategy = "lazy"
    ctx.options.upstream_cert = False
    ctx.options.ssl_insecure = True
    ctx.options.allow_hosts = ['nova-static.yostar.cn', 'nova.yostar.cn', 'sdk-api.yostar.cn', 'static-stellasora.yostar.net', "udata-api.open.yostar.net"]

SERVER_HOST = "localhost"
SERVER_PORT = 5000

TARGET_HOSTS = [
    "nova-static.yostar.cn",
    "nova.yostar.cn",
    "sdk-api.yostar.cn",
    "static-stellasora.yostar.net",
    "udata-api.open.yostar.net"
]

KILL_HOST_LIST = [
    'log.aliyuncs.com',
    'er.ns.aliyuncs.com',
    'toy.log.nexon.io',
    'm-api.nexon.com'
]

def request(flow: http.HTTPFlow) -> None:
    if any(flow.request.pretty_host.endswith(host) for host in KILL_HOST_LIST):
        flow.kill()
        return
    if flow.request.pretty_host in TARGET_HOSTS:
        flow.request.scheme = 'http'
        flow.request.host = SERVER_HOST
        flow.request.port = SERVER_PORT
        return
    else:
        flow.kill()
        return
