FROM alpine:3.4
MAINTAINER Wang <momocraft@gmail.com>

# Places you may want to mount a volume with:
# /keydb

ENV DOWNLOAD_URL https://github.com/skavanagh/KeyBox/releases/download/v2.86.00/keybox-jetty-v2.86_00.tar.gz
ENV ARCHIVE keybox-jetty-v2.86_00.tar.gz

RUN apk add --update wget openjdk8-jre-base && \
    mkdir -pv /opt /keydb                        && \
    cd /opt                                      && \
    wget $DOWNLOAD_URL -O $ARCHIVE               && \
    tar xf $ARCHIVE                              && \
    rm -r $ARCHIVE KeyBox-jetty/jetty/keybox/WEB-INF/classes/keydb/      && \
    # link
    ln -sv /keydb KeyBox-jetty/jetty/keybox/WEB-INF/classes/keydb && \
    apk del wget                                 && \
    rm -rf /var/cache/apk/*                      && \
    true

COPY run.sh /

# default port, using https
EXPOSE 8443
VOLUME /keydb

ENTRYPOINT exec sh /run.sh
