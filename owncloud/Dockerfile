#
# A container for (http only) owncloud
#

FROM alpine:3.4
MAINTAINER Wang <momocraft@gmail.com>

ENV RUN_DEP s6 owncloud owncloud-sqlite nginx php5-fpm

RUN \
    apk add --update $RUN_DEP                               && \
    mkdir -pv /run/nginx /config /data                      && \
    ln -sv   /dev/stdout /var/log/php-fpm.log               && \
    ln -sv   /dev/stdout /var/log/nginx/access.log          && \
    ln -sv   /dev/stderr /var/log/nginx/error.log           && \
    ln -svfn /config     /usr/share/webapps/owncloud/config && \
    ln -svfn /data       /usr/share/webapps/owncloud/data   && \
    adduser nobody www-data

ADD nginx.conf /etc/nginx/nginx.conf
ADD php.ini    /etc/php5/php.ini
ADD s6-services /s6-services

# data volume. owner should be 65534:65534
VOLUME /config
# config volume. owner should be 65534:65534
VOLUME /data

EXPOSE 80

CMD /bin/s6-svscan /s6-services
