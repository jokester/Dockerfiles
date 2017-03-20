#!/bin/bash

# FIXME needed for client?
# [[ -d /dev/net ]] || mkdir -p /dev/net
# [[ -c /dev/net/tun ]] || mknod /dev/net/tun c 10 200

exec openvpn /openvpn/client.conf

