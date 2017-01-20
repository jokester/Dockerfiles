# fluentd-archiver

A [fluentd](http://www.fluentd.org/) container to receive logs from local (host/other containers), and archive them.

## Input

We have the following drivers / formats by default. Port forwarding like `127.0.0.1(host):PORT -> container:PORT` is required.

- fluentd format
    - [docker fluentd driver](https://docs.docker.com/engine/admin/logging/fluentd/) / [example]()

<!-- TODO more input, maybe on different port, for fluentd -->

Examples:

- []()

(All these formats are enabled by default.


## Output

#### Archive to local file

default

#### Archive to AWS S3

[example](#)

Related: see [this image](#) for a [ELK]() server that pulls log from S3

#### Note on customizing output



## How to start

(be sure to bind ports to `127.0.0.1` to kept them from internet)

```bash
# docker run -d -p 127.0.0.1:24224:24224 jokester:fluentd-archiver
```

```yaml
```

## How to use

### docker

```bash

```

### docker-compose

## configuration example for clients

### rsyslog (xx)


