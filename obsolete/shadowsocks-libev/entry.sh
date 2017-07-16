#!/bin/sh

set -ue

failed_dropping_lan=false
for private_range in "10.0.0.0/8" "172.16.0.0/12" "192.168/16" "fd00::/8" ; do
  if ip route add prohibit "$private_range"; then
    echo "INFO: prohibited connection to $private_range"
  else
    echo "WARNING: failed prohibiting connection to IP range '$private_range'."
    failed_dropping_lan=true
  fi
done

if [[ "$failed_dropping_lan" != "false" ]]; then
  echo "This SECURITY RISK may expose your private LAN to shadowsocks clients."
  echo "You are advised to \`docker run --cap-add=NET_ADMIN\` to prevent this."
fi

echo "INFO: SERVER_ADDR=$SERVER_ADDR"
echo "INFO: SERVER_PORT=$SERVER_PORT"
echo "INFO: PASSWORD=$PASSWORD"
echo "INFO: METHOD=$METHOD"
echo "INFO: TIMEOUT=$TIMEOUT"
echo "INFO: DNS_ADDR=$DNS_ADDR"
exec ss-server -a nobody --fast-open -u \
              -s "$SERVER_ADDR" \
              -p "$SERVER_PORT" \
              -k "$PASSWORD"    \
              -m "$METHOD"      \
              -t "$TIMEOUT"     \
              -d "$DNS_ADDR"    \
