#
# Dockerfile for ngx_http_google_filter_module, an nginx module for google (search) mirror.
#
# ref:
# [ngx_http_google_filter_module](https://github.com/cuber/ngx_http_google_filter_module)
# [nginx-google_filter@aur](https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=nginx-google_filter)

FROM alpine:3.7
MAINTAINER Wang <momocraft@gmail.com>

ARG BUILD_DEP="build-base wget tar openssl-dev pcre-dev zlib-dev"
ARG RUN_DEP="openssl pcre zlib"
ARG PKGNAME_NGINX=nginx-1.12.2
ARG PKGNAME_MOD1=ngx_http_google_filter_module-0.2.0
ARG PKGNAME_MOD2=ngx_http_substitutions_filter_module-0.6.4

RUN \
    apk add --update $BUILD_DEP $RUN_DEP                                                                                                  \
    && mkdir -pv /usr/src                                                                                                                 \
    && cd /usr/src                                                                                                                        \
    && wget https://nginx.org/download/$PKGNAME_NGINX.tar.gz                                                        -O $PKGNAME_NGINX.tgz \
    && tar xf $PKGNAME_NGINX.tgz                                                                                                          \
    && wget --no-check-cert https://github.com/cuber/ngx_http_google_filter_module/archive/0.2.0.tar.gz             -O $PKGNAME_MOD1.tgz  \
    && tar xf $PKGNAME_MOD1.tgz                                                                                                           \
    && wget --no-check-cert https://github.com/yaoweibin/ngx_http_substitutions_filter_module/archive/v0.6.4.tar.gz -O $PKGNAME_MOD2.tgz  \
    && tar xf $PKGNAME_MOD2.tgz                                                                                                           \
    && cd $PKGNAME_NGINX                                                                                                                  \
    && ./configure                                                                                                                        \
    --add-module=../$PKGNAME_MOD1                                                                                                         \
    --add-module=../$PKGNAME_MOD2                                                                                                         \
    --with-http_ssl_module                                                                                                                \
    --with-http_v2_module                                                                                                                 \
    --with-ipv6                                                                                                                           \
    && make install                                                                                                                       \
    && mkdir -pv /nginx-conf.d                                                                                                            \
    && rm -rf /usr/src                                                                                                                    \
    && apk del $BUILD_DEP && rm -rf /var/cache/apk/*

ADD nginx.conf /usr/local/nginx/conf/nginx.conf
ADD default-cert /default-cert

EXPOSE 20080 20081

CMD ["/usr/local/nginx/sbin/nginx", "-g", "daemon off;"]
