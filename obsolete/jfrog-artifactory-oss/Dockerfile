FROM alpine:3.3
MAINTAINER Wang <momocraft@gmail.com>

# Places you may want to mount a volume with:
# /artifactory-data
# where {data,logs,backup,etc} are placed
# (see https://www.jfrog.com/confluence/display/RTF/Running+with+Docker#RunningwithDocker-RunningArtifactoryOSSorPro )

ENV DOWNLOAD_URL https://bintray.com/artifact/download/jfrog/artifactory/jfrog-artifactory-oss-4.7.3.zip
ENV ZIP jfrog-artifactory-oss-4.7.3.zip

RUN apk add --update wget openjdk8-jre-base bash && \
    wget $DOWNLOAD_URL                           && \
    unzip $ZIP                                   && \
    rm $ZIP                                      && \
    apk del wget                                 && \
    rm -rf /var/cache/apk/*                      && \
    mkdir -pv /artifactory-data                  && \
    mv /artifactory-oss-4.7.3 /artifactory-oss   && \
    mkdir -pv /artifactory-oss/data              && \
    mkdir -pv /artifactory-oss/backup

COPY run.sh /

# Default port of artifactory's tomcat
EXPOSE 8081

ENTRYPOINT bash /run.sh
