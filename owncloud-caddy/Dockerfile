#
# A container for owncloud
#

FROM jokester/owncloud:build7
MAINTAINER Wang <momocraft@gmail.com>

RUN \
    apk add --update caddy                                  && \
    rm -rf /var/cache/apk/*

# overwrite nginx.conf: listen on 81 (http) only
ADD nginx.conf        /etc/nginx/nginx.conf
ADD Caddyfile         /etc/Caddyfile
ADD s6-services/caddy /s6-services/caddy

