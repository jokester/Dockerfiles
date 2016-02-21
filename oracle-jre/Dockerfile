FROM alpine:3.3
MAINTAINER Wang <momocraft@gmail.com>

ENV DOWNLOAD_URL http://download.oracle.com/otn-pub/java/jdk/8u73-b02/server-jre-8u73-linux-x64.tar.gz
ENV ORACLE_COOKIE "Cookie: oraclelicense=accept-securebackup-cookie"
ENV TGZ server-jre-8u73-linux-x64.tar.gz
ENV JAVA_HOME /opt/jdk1.8.0_73

RUN apk add --update curl                        && \
    mkdir -pv /opt                               && \
    curl -L -O -H "$ORACLE_COOKIE" $DOWNLOAD_URL && \
    tar xzf $TGZ -C /opt                         && \
    rm $TGZ                                      && \
    apk del curl                                 && \
    rm -rf /var/cache/apk/*
