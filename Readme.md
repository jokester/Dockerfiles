# Dockerfiles

This repo contains `Dockerfile`s, and other Docker-related settings I use.

## Images / Configs

- [alpine-node-script-host/](alpine-node-script-host/) alpine + nodejs + chromium , to run scripted headless server

- [google-reverse-proxy](google-reverse-proxy) a `nginx` image to mirror Google search and Google scholar

## docker-compose based

- TODO [example-compose-fluent]() A sidecar-ish service to receive log from other docker-compose services.

- TODO [example-remote-compose]() Example to start containers in remote host with SSH + docker-compose

## k8s and kustomize based 

- [fluent-bit-log-ingestor](fluent-bit-log-ingestor) A kustomize-able `DaemonSet` to tail local log files in nodes, and forward to a log sink.

## Scripts

- [ss-cmd-generator](ss-cmd-generator) (Chinese only) generates `docker run` command for shadowsocks container

## Obsolete stuff

See [obsolete/](obsolete/).

MIT.
