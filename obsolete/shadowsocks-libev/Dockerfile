#
# Dockerfile for shadowsocks-libev
#

FROM alpine:3.5
MAINTAINER Wang <momocraft@gmail.com>

ENV SS_VER    2.6.1
ENV SS_URL    https://github.com/shadowsocks/shadowsocks-libev/archive/v$SS_VER.tar.gz
ENV SS_DIR    shadowsocks-libev-$SS_VER
ENV RUN_DEP   openssl pcre
ENV BUILD_DEP autoconf build-base curl libtool linux-headers openssl-dev file pcre-dev

RUN set -ex \
    && apk add --update $BUILD_DEP $RUN_DEP \
    && curl -sSL $SS_URL | tar xz \
    && cd $SS_DIR \
        && ./configure --disable-documentation \
        && make install -j \
        && cd .. \
        && rm -rf $SS_DIR \
    && apk del --purge $BUILD_DEP \
    && rm -rf /var/cache/apk/*

ADD entry.sh /

ENV SERVER_ADDR 0.0.0.0
ENV SERVER_PORT 54321
ENV PASSWORD    atlas
ENV METHOD      aes-256-cfb
ENV TIMEOUT     300
ENV DNS_ADDR    8.8.8.8

EXPOSE $SERVER_PORT

CMD ["sh", "/entry.sh"]
