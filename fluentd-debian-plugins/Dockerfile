# fluentd-full
#
#   A [fluentd](http://www.fluentd.org/) instance to receive, forward and archive logs
#   based on [Fluentd Docker Image](https://github.com/fluent/fluentd-docker-image)
#   

FROM fluent/fluentd:v1.0-debian-onbuild
MAINTAINER Wang <momocraft@gmail.com>

RUN true \
        && apt-get update && apt-get upgrade -y                               \
        && BUILD_DEPS="make gcc g++ libc-dev ruby-dev wget bzip2 gnupg dirmngr" \
        && apt-get install -y --no-install-recommends $BUILD_DEPS             \
        && gem install --no-ri --no-rdoc                                      \
            fluent-plugin-elasticsearch:2.4.0                                 \
            fluent-plugin-influxdb:1.0.0                                      \
            fluent-plugin-rewrite:0.1.1                                       \
            fluent-plugin-s3:1.1.0                                            \
            fluent-plugin-systemd:0.3.1                                       \
        && apt-get purge -y --auto-remove \
                  -o APT::AutoRemove::RecommendsImportant=false \
                  $BUILD_DEPS \
         && rm -rf /var/lib/apt/lists/* \
         && rm -rf /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem

