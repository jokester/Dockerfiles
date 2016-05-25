# A one-shot container to issue/renew letsencrypt certificates with DNS challenge
# docker run -v /var/letsencrypt:/data --rm jokester/letsencrypt

FROM alpine:3.3
MAINTAINER Wang <momocraft@gmail.com>

ENV BUILD_DEP tar git
ENV RUN_DEP openssl py-pip bash curl
ENV LE_PATH /letsencrypt.sh-0.2.0

COPY data-seed /data-seed

RUN                                                                                                                               \
    apk add --update $BUILD_DEP $RUN_DEP                                                                                          \
    && curl -SsL https://github.com/lukas2511/letsencrypt.sh/archive/v0.2.0.tar.gz | tar xzv -C /                                 \
    && curl -SsL https://raw.githubusercontent.com/AnalogJ/lexicon/v1.1.4/examples/letsencrypt.default.sh -o /$LE_PATH/lexicon-hook.sh \
    && chmod +x $LE_PATH/lexicon-hook.sh                                                                                          \
    && pip install git+https://github.com/jokester/lexicon.git@17de1941e13011fee3ab4cd574289ca413976342                           \
    && ln -sv /data/config.sh $LE_PATH/                                                                                           \
    && apk del $BUILD_DEP && rm -rf /var/cache/apk/*

# TODO install lexicon from pip repo after they accepts my PR

COPY run.sh /

VOLUME /data
WORKDIR /data

CMD bash /run.sh
