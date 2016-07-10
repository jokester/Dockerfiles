#
# Dockerfile for shadowsocks-libev
#

FROM alpine
MAINTAINER Wang <momocraft@gmail.com>

ENV SS_VER 2.4.7
ENV SS_URL https://github.com/shadowsocks/shadowsocks-libev/archive/v$SS_VER.tar.gz
ENV SS_DIR shadowsocks-libev-$SS_VER
ENV SS_DEP autoconf build-base curl libtool linux-headers openssl-dev file

RUN set -ex \
    && apk add --update $SS_DEP \
    && curl -sSL $SS_URL | tar xz \
    && cd $SS_DIR \
        && ./configure \
        && make install -j2 \
        && cd .. \
        && rm -rf $SS_DIR \
    && apk del --purge $SS_DEP \
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
