## Shadowsocks-libev @ alpine linux

----------------

Run with default configuration:

    docker run -d -p :54321:54321 --cap-add=NET_ADMIN jokester/shadowsocks-libev

(`NET_ADMIN` is required to disable routing to private LAN).

password / port / encryption Can be configured by environment variables (`docker run -e`). See [entrypoint script](https://github.com/jokester/Dockerfiles/blob/master/shadowsocks-libev/run.sh).

[Dockerfile](https://github.com/jokester/Dockerfiles/tree/master/shadowsocks-libev)
