#
# A container for empty nginx instance
#

FROM alpine:3.4
MAINTAINER Wang <momocraft@gmail.com>

RUN \
    apk add --update nginx                                  && \
    mkdir -pv /run/nginx  /sites.d                          && \
    ln -sv   /dev/stdout /var/log/nginx/access.log          && \
    ln -sv   /dev/stderr /var/log/nginx/error.log           && \
    rm -rf /var/cache/apk/*

ADD nginx.conf /etc/nginx/nginx.conf

# nginx sites
VOLUME /sites.d

EXPOSE 80 443

CMD /usr/sbin/nginx
