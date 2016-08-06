## google-reverse-proxy

一个建立google / google scholar镜像站的docker image. 使用了[ngx_http_google_filter_module](https://github.com/cuber/ngx_http_google_filter_module)和alpine linux.

--------------

## 默认设置

`docker run -d --publish 54321:20081 --restart=always jokester/google-reverse-proxy`

- 镜像站的地址为`https://服务器IP:54321`
- 语言=英文
- 有google scholar (路径是`/scholar/`)

## 自定义设置

你可以通过在`/nginx-conf.d/`增加`.conf`文件来增加以下设置:

- https
- 语言
- http basic auth
- (凡是可以在`http`块内定义的配置)

容器内的`/nginx-conf.d/*.conf`会被包含到`nginx.conf`的`http`块内 (见[nginx.conf](https://github.com/jokester/Dockerfiles/blob/master/google-reverse-proxy/nginx.conf)).

## Source

[Dockerfile](https://github.com/jokester/Dockerfiles/tree/master/google-reverse-proxy)
