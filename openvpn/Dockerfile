#
# Dockerfile for openvpn
# MUST be runned with permission and pki files
# docker run -it -v /var/openvpn-server:/openvpn-server -p :1194:1194 --cap-add=NET_ADMIN --name=openvpn jokester/openvpn

FROM alpine:3.5
MAINTAINER Wang <momocraft@gmail.com>

RUN apk add --update openvpn && rm -rf /var/cache/apk/*

# config data should be mounted here
# configuration and a "entry.sh" should be mount in /openvpn/
# RUN mkdir -pv /openvpn-server/

EXPOSE 1194

CMD sh /entry.sh
