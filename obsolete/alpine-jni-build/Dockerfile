#
# alpine + OpenJDK 8 + build-base + cmake
#

FROM alpine:3.6
MAINTAINER Wang <momocraft@gmail.com>

RUN \
        apk add --no-cache git cmake build-base openjdk8 \
        && adduser -D build-jni

ENV JAVA_HOME /usr/lib/jvm/default-jvm

USER build-jni:build-jni
