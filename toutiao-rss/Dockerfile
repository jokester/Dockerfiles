#
# Dockerfile for toutiao-rss
#

FROM alpine:3.4
MAINTAINER Wang <momocraft@gmail.com>

ENV RUN_DEP nodejs
ENV BUILD_DEP git

# clone toutiao-rss repo here
ADD toutiao-rss /toutiao-rss

RUN set -ex \
    && apk add --update $RUN_DEP \
    && cd /toutiao-rss \
        && npm install \
    && apk del --purge $BUILD_DEP \
    && rm -rf /var/cache/apk/*

EXPOSE 54552

CMD ["node", "/toutiao-rss/index.js"]
