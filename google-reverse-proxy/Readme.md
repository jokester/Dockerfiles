## google-reverse-proxy

`nginx` image to mirror google / google scholar. Powered by [ngx_http_google_filter_module](https://github.com/cuber/ngx_http_google_filter_module) / alpine linux.

[中文版](Readme-zh.md)

--------------

## Default configuration

`docker run -d --publish 54321:20081 --restart=always jokester/google-reverse-proxy` starts a server with default configuration:

- The mirror site will be at `https://server-ip-address:54322`
- Language: en
- With google scholar (at `/scholar/`)

## Custom configuration

One can inject more configuration by creating `/nginx-conf.d/xxx.conf` in container:

- https
- set language
- http basic auth
- (whatever can be done within the `http` block)

`/nginx-conf.d/*.conf` get included into the `http` block of `nginx.conf` (see [nginx.conf](https://github.com/jokester/Dockerfiles/blob/master/google-reverse-proxy/nginx.conf)).

## Source

[Dockerfile](https://github.com/jokester/Dockerfiles/tree/master/google-reverse-proxy)
