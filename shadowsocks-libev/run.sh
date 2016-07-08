#!/bin/sh

# this file should be run as non-previleged user
echo "INFO: SERVER_ADDR=$SERVER_ADDR"
echo "INFO: SERVER_PORT=$SERVER_PORT"
echo "INFO: PASSWORD=$PASSWORD"
echo "INFO: METHOD=$METHOD"
echo "INFO: TIMEOUT=$TIMEOUT"
echo "INFO: DNS_ADDR=$DNS_ADDR"
exec ss-server --fast-open -u \
              -s "$SERVER_ADDR" \
              -p "$SERVER_PORT" \
              -k "$PASSWORD"    \
              -m "$METHOD"      \
              -t "$TIMEOUT"     \
              -d "$DNS_ADDR"    \


