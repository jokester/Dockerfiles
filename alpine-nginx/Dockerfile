#
# A container for empty nginx instance
#

FROM alpine:3.11
MAINTAINER Wang <momocraft@gmail.com>

RUN \
    apk add --update nginx                       && \
    mkdir -pv /run/nginx                         && \
    ln -sv /dev/stdout /var/log/nginx/access.log && \
    ln -sv /dev/stderr /var/log/nginx/error.log  && \
    rm -rf /var/cache/apk/*

# only for hint
VOLUME /etc/nginx/conf.d
EXPOSE 80 443

CMD nginx -g "daemon off;"
