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
ADD s6-services/caddy /s6-services/caddy

# will complain if this is not changed
ENV DOMAIN example.com
