#
# A container for owncloud
#

FROM alpine:3.4
MAINTAINER Wang <momocraft@gmail.com>

ENV RUN_DEP s6 owncloud owncloud-sqlite nginx php5-fpm

RUN \
    apk add --update $RUN_DEP                               && \
    mkdir -pv /run/nginx /config /data                      && \
    chown 65534:65534 /config /data                         && \
    ln -sv   /dev/stdout /var/log/php-fpm.log               && \
    ln -sv   /dev/stdout /var/log/nginx/access.log          && \
    ln -sv   /dev/stderr /var/log/nginx/error.log           && \
    ln -svfn /config     /usr/share/webapps/owncloud/config && \
    ln -svfn /data       /usr/share/webapps/owncloud/data   && \
    adduser nobody www-data

ADD nginx.conf  /etc/nginx/nginx.conf
ADD php.ini     /etc/php5/php.ini
ADD nginx.d     /nginx.d
ADD s6-services /s6-services

# owner of /data and /config should be uid:gid = 65534:65534
VOLUME ["/config", "/data", "/nginx.d"]

EXPOSE 80 443

CMD /bin/s6-svscan /s6-services
