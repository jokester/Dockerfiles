# fluentd-archiver

A [fluentd](http://www.fluentd.org/) container to receive logs from local (host/other containers), and archive them.

## Input

We have the following drivers / formats by default. Port forwarding like `127.0.0.1(host):PORT -> container:PORT` is required.

- fluentd format
    - Used by [docker fluentd driver](https://docs.docker.com/engine/admin/logging/fluentd/). See [](#) for

<!-- TODO more input, maybe on different port, for fluentd -->

## Output

#### Archive to local file

default

<!-- TODO #### Archive to AWS S3 -->

<!--
[example](#)

Related: see [this image](#) for a [ELK]() server that pulls log from S3

#### Note on customizing output
-->

## Start fluentd-archiver

NOTE: be sure to bind ports to `127.0.0.1` to kept them from internet.

#### docker

```bash
# docker run -d -p 127.0.0.1:24224:24224 jokester:fluentd-archiver
```

#### docker-compose

docker-compose (warning: log may lost without synchronization/wait of containers)

```yaml
version: '2'
services:
  fluentd-archiver:
    image: jokester/fluentd-archiver
    ports:
      - "127.0.0.1:24224:24224"
    volumes:
      - "./log-archive:/log-archive"
    restart: always
```

## Let containers logs to fluentd-archiver

#### docker

```bash
TODO
```

#### docker-compose

```yaml
version: '2'
services:
  (service-name):
    logging:
      driver: fluentd
      options:
        fluentd-address: "127.0.0.1:24224"
        # async-connect requires docker >= 1.11
        fluentd-async-connect: "true"
```

###### TODO

- rsyslog / journald import
- archive to AWS S3
