## Shadowsocks-libev @ alpine linux

DEPRECATED in favor of up-to date [easypi/shadowsocks-libev](https://hub.docker.com/r/easypi/shadowsocks-libev/) image.

----------------

Run with default configuration:

    docker run -d -p :54321:54321 --cap-add=NET_ADMIN jokester/shadowsocks-libev

(The `--cap-add=NET_ADMIN` part is optional yet strongly advised, to disable routing to private LAN for security).

password / port / encryption can be configured with environment variables (`docker run -e`). See [entrypoint script](https://github.com/jokester/Dockerfiles/blob/master/shadowsocks-libev/entry.sh).

[Dockerfile](https://github.com/jokester/Dockerfiles/tree/master/shadowsocks-libev)
