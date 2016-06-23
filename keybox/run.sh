#!/bin/sh

set -ue

cd /opt/KeyBox-jetty/jetty
# managed to run with -Xmx16m so 64m should be good enough
exec java -Xms16m -Xmx64m -jar start.jar
