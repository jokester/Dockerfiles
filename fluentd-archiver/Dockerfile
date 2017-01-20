# fluentd-archiver
#
#   A [fluentd](http://www.fluentd.org/) instance to receive logs and archive them.

FROM alpine:3.5
MAINTAINER Wang <momocraft@gmail.com>

RUN true                                         \
        && apk update                            \
        && apk add                               \
            ruby lzo xz gzip ruby-irb            \
        && apk add --virtual BUILD_DEP           \
            ruby-dev build-base                  \
        && gem        install --no-ri --no-rdoc  \
            fluentd json                         \
        && fluent-gem install --no-ri --no-rdoc  \
            fluent-plugin-s3                     \
        && apk del BUILD_DEP                     \
        && rm -rf /var/cache/apk/*

COPY fluentd /fluentd

CMD ["fluentd", "--verbose", "--config", "/fluentd/fluentd.conf"]
