#!/bin/sh

echo "SERVER_ADDR=$SERVER_ADDR"
echo "SERVER_PORT=$SERVER_PORT"
echo "PASSWORD=$PASSWORD"
echo "METHOD=$METHOD"
echo "TIMEOUT=$TIMEOUT"
echo "DNS_ADDR=$DNS_ADDR"
exec ss-server --fast-open -u \
              -s "$SERVER_ADDR" \
              -p "$SERVER_PORT" \
              -k "$PASSWORD"    \
              -m "$METHOD"      \
              -t "$TIMEOUT"     \
              -d "$DNS_ADDR"    \

