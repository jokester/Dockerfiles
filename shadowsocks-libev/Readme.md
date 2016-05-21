## Shadowsocks-libev @ alpine linux

----------------

Run with default configuration:

    docker run -d -p :54321:54321 jokester/shadowsocks-libev

Can be configured by environment variables (`docker run -e`). See [entrypoint script](https://github.com/jokester/Dockerfiles/blob/master/shadowsocks-libev/entry.sh).

[Dockerfile](https://github.com/jokester/Dockerfiles/tree/master/shadowsocks-libev)
