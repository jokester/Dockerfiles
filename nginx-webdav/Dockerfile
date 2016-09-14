#
# Dockerfile for ngx_http_google_filter_module, an nginx module that mirrors google.
#
# ref:
# [ngx_http_google_filter_module](https://github.com/cuber/ngx_http_google_filter_module)
# [nginx-google_filter@aur](https://aur.archlinux.org/cgit/aur.git/tree/PKGBUILD?h=nginx-google_filter)

FROM alpine:3.4
MAINTAINER Wang <momocraft@gmail.com>

ENV BUILD_DEP build-base wget tar openssl-dev pcre-dev zlib-dev expat-dev
ENV RUN_DEP openssl pcre zlib expat
ENV PKGNAME_NGINX nginx-1.10.1
ENV PKGNAME_MOD1 nginx-dav-ext-module-0.0.3

RUN \
    apk add --update $BUILD_DEP $RUN_DEP                                                                                                  \
    && mkdir -pv /usr/src                                                                                                                 \
    && cd /usr/src                                                                                                                        \
    && wget http://nginx.org/download/nginx-1.10.1.tar.gz                                                           -O $PKGNAME_NGINX.tgz \
    && tar xf $PKGNAME_NGINX.tgz                                                                                                          \
    && wget --no-check-cert https://github.com/arut/nginx-dav-ext-module/archive/v0.0.3.tar.gz                      -O $PKGNAME_MOD1.tgz  \
    && tar xf $PKGNAME_MOD1.tgz                                                                                                           \
    && cd $PKGNAME_NGINX                                                                                                                  \
    && ./configure                                                                                                                        \
    --add-module=../$PKGNAME_MOD1                                                                                                         \
    --with-http_ssl_module                                                                                                                \
    --with-http_dav_module                                                                                                                \
    --with-ipv6                                                                                                                           \
    && make install                                                                                                                       \
    && mkdir -pv /nginx-conf.d                                                                                                            \
    && rm -rf /usr/src                                                                                                                    \
    && apk del $BUILD_DEP && rm -rf /var/cache/apk/*

ADD nginx.conf /usr/local/nginx/conf/nginx.conf

VOLUME /nginx-conf.d

CMD ["/usr/local/nginx/sbin/nginx", "-g", "daemon off;"]
