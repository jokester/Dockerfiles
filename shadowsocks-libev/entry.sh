#!/bin/sh

set -ue

failed_dropping_lan=false
for private_range in "10.0.0.0/8" "172.16.0.0/12" "192.168/16" "fd00::/8" ; do
  if ip route add blackhole "$private_range"; then
    echo "INFO: dropped connection to $private_range"
  else
    echo "WARNING: failed dropping connection with 'ip route add blackhole $private_range'."
    failed_dropping_lan=true
  fi
done

if [[ "$failed_dropping_lan" != "false" ]]; then
  echo "This SECURITY RISK may allow shadowsocks client to access your private LAN."
  echo "You may want to start with --cap-add=NET_ADMIN or in host"
fi

exec su nobody -s /bin/sh -c "sh /run.sh"
