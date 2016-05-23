#
# Dockerfile to issue/renew letsencrypt https certificates
# docker run -v /var/letsencrypt:/letsencrypt -e cert     --rm jokester/letsencrypt

FROM alpine:3.3
MAINTAINER Wang <momocraft@gmail.com>

ENV BUILD_DEP tar
ENV RUN_DEP openssl py-pip bash curl
ENV LE_PATH letsencrypt.sh-0.2.0

RUN                                                                                                                               \
    apk add --update $BUILD_DEP $RUN_DEP                                                                                          \
    && mkdir -pv /data/certs                                                                                                      \
    && curl -SsL https://github.com/lukas2511/letsencrypt.sh/archive/v0.2.0.tar.gz | tar xzv -C /                                      \
    && curl https://raw.githubusercontent.com/AnalogJ/lexicon/master/examples/letsencrypt.default.sh -o /$LE_PATH/lexicon-hook.sh \
    && chmod +x /$LE_PATH/lexicon-hook.sh                                                                                         \
    && pip install dns-lexicon                                                                                                    \
    && ln -sv /data/domains.txt /$LE_PATH/                                                                                                     \
    && ln -sv /data/env /$LE_PATH/                                                                                                     \
    && ln -sv /data/certs /$LE_PATH/                                                                                                     \
    && apk del $BUILD_DEP && rm -rf /var/cache/apk/*

# TODO issue


ADD domains.txt /data
ADD env /data
VOLUME /data

ADD run.sh /
CMD bash /run.sh
