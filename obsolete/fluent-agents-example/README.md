# fluent-agents-example

An example of log management using (fluentd / fluent-bit).

## fluent-bit for container hosts

- tiny footprint
- have builtin metrics (cpu / hdd / mem) input
- limited input/output plugins
- can be used with docker's `fluentd` log driver

## fluentd for log aggrevation

- extensive output plugins
- Running in a "log central" server

## Try it

```sh
docker-compose up -d
```

## Warning

The current setting lets fluentd generate TLS certs on the fly, with no client verification.

For security's sake just *do not* use it in any serious or public settings.

## TODO

- forward syslog
- forward kernel log
- forward systemd (journald) log
