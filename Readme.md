This repo contains `Dockerfile`s, and other Docker-related settings I use.

## Images

- [arch-playground](arch-playground) a ssh-only archlinux image
- [google-reverse-proxy](google-reverse-proxy) a `nginx` image to mirror Google search and Google scholar
- [owncloud-caddy](owncloud-caddy) a owncloud 9 instance, with auto-issued Let's Encrypt certs
    - Requires a dedicated global IP address for http challange.
- [fluentd-debian-plugins](fluentd-debian-plugins)
    - [fluent/fluentd](https://hub.docker.com/r/fluent/fluentd/) enhanced with plugins

## Services

A *service* contains multiple container definitions, connected with `docker-compose`.

- [alpine-nextcloud](alpine-nextcloud) NextCloud 12 instance (nginx / php-fpm / PgSQL)
- [alpine-piwik](alpine-piwik) Piwik 3.2.0 instance (nginx / php-fpm / MariaDB)
- [alpine-piwik](alpine-piwik) Piwik 3.2.0 instance (nginx / php-fpm / MariaDB)
- [fluent-agents-example](fluentd-agents-example) example of collecting logs with lightweight `fluent-bit`, and forward to a central `fluentd` instance

<!-- TODO: conventions
All service-s uses a container. It is possible to  (docker-compose merges them to 1)
- a `nginx-front` container to expose http/https to public
-->

<!-- TODO: elk stack -->

## Kubernetes Pods

## Scripts

- [ss-cmd-generator](ss-cmd-generator) (Chinese only) generates `docker run` command for shadowsocks container

## Obsolete images

Some of them may still work, but not used (by me) or updated.
If you need one of them revived and updated, feel free to create a issue.

- [owncloud](obsolete/owncloud)
    - planning to switch to multi-container solution, for less build work
- [shadowsocks-libev](obsolete/shadowsocks-libev) shadowsocks-libev built in alpine
    - deprecated in favor of up-to date [easypi/shadowsocks-libev](https://hub.docker.com/r/easypi/shadowsocks-libev/) image.
- [jfrog-artifactory-oss](obsolete/jfrog-artifactory-oss) artifactory-oss running in alpine linux and OpenJRE
    - not used: moved my package repo to cloud service
- [nginx-rtmp](obsolete/nginx-rtmp)
    - not required: nginx package from alpine repo already have `nginx-rtmp` module compiled.
- [openvpn](obsolete/openvpn) / [nginx-front](obsolete/nginx-front)
    - not required as a separated image: a `docker run` command would be easier
- [oracle-jre](obsolete/oracle-jre)
    - not working: Oracle JRE does not support alpine
- [fluentd-central](obsolete/fluentd-central)
    - not working: may revive it when I found a better solution
- [fluentd-archiver](fluentd-archiver) a Fluentd instance to collect and forward docker logs
    - deprecated in favor of fluentd-debian-plugins, for new versions and systemd support
- [letsencrypt](letsencrypt) a one-shot container to apply Let's Encrypt certificates, with DNS challenge
    - not updating and using it myself. please consider [adferrand/letsencrypt-dns](https://hub.docker.com/r/adferrand/letsencrypt-dns/) instead.

### License

MIT.
