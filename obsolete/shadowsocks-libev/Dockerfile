#
# Dockerfile for shadowsocks-libev
#

FROM alpine:3.9
MAINTAINER Wang <momocraft@gmail.com>

ENV SS_VER    3.2.5
ENV SS_URL    https://github.com/shadowsocks/shadowsocks-libev/releases/download/v$SS_VER/shadowsocks-libev-$SS_VER.tar.gz
ENV SS_DIR    shadowsocks-libev-$SS_VER
ENV RUN_DEP   pcre libsodium mbedtls c-ares libev
ENV BUILD_DEP autoconf automake build-base curl libtool linux-headers file pcre-dev libsodium-dev mbedtls-dev c-ares-dev libev-dev

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
