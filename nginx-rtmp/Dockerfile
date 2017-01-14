#
# Dockerfile for nginx-rtmp
#
# ref:
# [arut/nginx-rtmp-module](https://github.com/arut/nginx-rtmp-module/releases)

FROM alpine:3.5
MAINTAINER Wang <momocraft@gmail.com>

ENV PKGNAME_NGINX nginx-1.10.2
ENV PKGNAME_MOD1 nginx-rtmp-module-1.1.10

RUN true                                                                                            \
    && apk add --update                                                                             \
        openssl pcre zlib                                                                           \
    && apk add --virtual BUILD_DEP                                                                  \
        build-base wget ca-certificates tar openssl-dev pcre-dev zlib-dev                           \
    && mkdir -pv /usr/src                                                                           \
    && cd /usr/src                                                                                  \
    && wget http://nginx.org/download/$PKGNAME_NGINX.tar.gz                   -O $PKGNAME_NGINX.tgz \
    && tar xf $PKGNAME_NGINX.tgz                                                                    \
    && wget https://github.com/arut/nginx-rtmp-module/archive/v1.1.10.tar.gz  -O $PKGNAME_MOD1.tgz  \
    && tar xf $PKGNAME_MOD1.tgz                                                                     \
    && cd $PKGNAME_NGINX                                                                            \
    && ./configure                                                                                  \
        --add-module=../$PKGNAME_MOD1                                                               \
        --with-http_ssl_module                                                                      \
        --with-ipv6                                                                                 \
    && make -j install                                                                              \
    && rm -rf /usr/src                                                                              \
    && apk del BUILD_DEP                                                                            \
    && rm -rf /var/cache/apk/*

CMD ["/usr/local/nginx/sbin/nginx", "-g", "daemon off;"]
