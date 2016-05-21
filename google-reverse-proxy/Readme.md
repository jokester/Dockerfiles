## google-reverse-proxy

`nginx` image to mirror google / google scholar. Powered by [ngx_http_google_filter_module](https://github.com/cuber/ngx_http_google_filter_module) / alpine linux.

--------------

## Default configuration

`docker run -d --publish 20080:20080 --restart=always jokester/google-reverse-proxy` starts a server with default configuration:

- Listen on `0.0.0.0:20080` (http)
- Language: en
- With google scholar (at `/scholar/`)

## Custom configuration

Additional configuration including

- https
- set locale
- http basic auth
- (whatever can be done within the `http` block)

can be done by mounting a volume at `/nginx-conf.d/` and create `*.conf` in it (see [nginx.conf](https://github.com/jokester/Dockerfiles/blob/master/google-reverse-proxy/nginx.conf)).

## Source

[Dockerfile](https://github.com/jokester/Dockerfiles/tree/master/google-reverse-proxy)
