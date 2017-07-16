# fluentd-central

A central log server that receives (encrypted) log entries from other nodes.

## Default settings

- Input: syslog (plain tcp/ ssl)
    - this is firstly received by a rsyslogd instance and then forwarded to fluentd
- Input: fluentd (plain tcp / ssl)
- Output: local file

## Run

Default settings: receive local from localhost, and write to `` inside container

    # docker run --publish 127.0.0.1:24224:24224 --publish 127.0.0.1:5140:5140 --publish 127.0.0.1:9880:9880 --restart=always {TODO:IMAGE}

- port 24224: fluentd format, used by libraries including docker's [fluentd log driver]()
- port 5410: syslog
- port 5140: syslog format
- port 9880: http format
- always restart

## Security: SSL/TLS

This image does not contain a X509 cert used for ssl/tls communication (for security's sake).

At first run, the container will sign itself a cert at `/fluentd.default.certs/default.{pem,key}`, `You can `docker cp` it and distribute it to client nodes.
You can also generate your own cert/key and mount it at `TODO: PATH`.

## Customize
