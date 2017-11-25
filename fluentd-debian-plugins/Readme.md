# fluentd-full

fluentd with additional plugins. Based on [fluent/fluentd:v0.14-debian-onbuild](https://github.com/fluent/fluentd-docker-image)

## Config

By default it accepts

## Plugins added

### Input

- `fluent-plugin-systemd`

### Processing

- `fluent-plugin-rewrite`

### Output

- `fluent-plugin-elasticsearch`
- `fluent-plugin-s3`
    - this can also input from s3
- `fluent-plugin-influxdb` output to InfluxDB

## Plugins *not* added

- `fluent-plugin-secure-forward`
    - since v0.14.12 fluentd have builtin support for secure forwarding. see [fluentd blog](https://www.fluentd.org/blog/fluentd-v0.14.12-has-been-released).

