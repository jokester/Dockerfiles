# Receive logs and (possibly) forward to another fluentd server

FROM alpine:3.4
MAINTAINER Wang <momocraft@gmail.com>

ENV BUILD_DEP build-base ruby-dev
ENV RUN_DEP bash ruby rsyslog rsyslog-tls gnutls-utils
ENV GEM_OPTIONS --no-ri --no-rdoc
ENV GEM_PACKAGES fluentd fluent-plugin-secure-forward

RUN apk add --update $BUILD_DEP $RUN_DEP         && \
    gem install $GEM_PACKAGES $GEM_OPTIONS       && \
    apk del $BUILD_DEP                           && \
    mkdir -pv /fluentd.d /fluentd.sink           && \
    rm -rf /var/cache/apk/*

# a volume to inject additional settings
VOLUME /fluentd.d

# [forward Input Plugin](http://docs.fluentd.org/articles/in_forward)
EXPOSE 20224

# [syslog Input Plugin](http://docs.fluentd.org/articles/in_syslog)
# NOTE receiving syslog from the same host is arguably not-so-useful,
# as a container is typically started far later than important daemons.
EXPOSE 5140

# in_http
EXPOSE 9880

# main config file
ADD fluentd.conf /root/
ADD paranoiac.io /root/paranoiac.io

CMD exec fluentd -c /root/fluentd.conf
