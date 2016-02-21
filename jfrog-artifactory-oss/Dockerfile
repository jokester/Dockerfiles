FROM alpine:3.3
MAINTAINER Wang <momocraft@gmail.com>

# Places you may want to mount a volume with:
# /artifactory-oss-4.5.1/{data,logs,backup,etc}
# (see https://www.jfrog.com/confluence/display/RTF/Running+with+Docker#RunningwithDocker-RunningArtifactoryOSSorPro )

ENV DOWNLOAD_URL https://bintray.com/artifact/download/jfrog/artifactory/jfrog-artifactory-oss-4.5.1.zip
ENV ZIP jfrog-artifactory-oss-4.5.1.zip

RUN apk add --update wget openjdk8-jre bash && \
    wget $DOWNLOAD_URL                      && \
    unzip $ZIP                              && \
    rm $ZIP                                 && \
    apk del wget                            && \
    rm -rf /var/cache/apk/*

# Default port of artifactory's tomcat
EXPOSE 8081

ENTRYPOINT /artifactory-oss-4.5.1/bin/artifactory.sh
