
## Services

A *service* contains multiple container definitions, connected with `docker-compose`.

- [alpine-nextcloud](alpine-nextcloud) NextCloud 12 instance (nginx / php-fpm / PgSQL)
- [alpine-piwik](alpine-piwik) Piwik 3.2.0 instance (nginx / php-fpm / MariaDB)
- [alpine-piwik](alpine-piwik) Piwik 3.2.0 instance (nginx / php-fpm / MariaDB)

## Stuff

Some of them may still work, but I don't plan to use or update them.

- [owncloud](obsolete/owncloud)
    - planning to switch to multi-container solution, for less build work
- [shadowsocks-libev](obsolete/shadowsocks-libev) shadowsocks-libev built in alpine
    - deprecated in favor of up-to date [easypi/shadowsocks-libev](https://hub.docker.com/r/easypi/shadowsocks-libev/) image.
- [jfrog-artifactory-oss](obsolete/jfrog-artifactory-oss) artifactory-oss running in alpine linux and OpenJRE
    - not used: moved my private repo to cloud service
- [nginx-rtmp](obsolete/nginx-rtmp)
    - not required: nginx package from alpine repo already have `nginx-rtmp` module compiled.
- [openvpn](obsolete/openvpn) / [nginx-front](obsolete/nginx-front)
    - not required as a separated image: a `docker run` command would be easier
- [letsencrypt](letsencrypt) a one-shot container to apply Let's Encrypt certificates, with DNS challenge
    - just use `acme.sh`
- [oracle-jre](obsolete/oracle-jre)
    - just use OpenJDK or Amazon Corretto
- [fluentd-central](obsolete/fluentd-central)
    - not working: may revive it when I found a better solution
- [fluentd-archiver](obsolete/fluentd-archiver) a Fluentd instance to collect and forward docker logs
    - just use `fluentd` or `fluent-bit` with a config file in volume
- [fluent-agents-example](fluentd-agents-example) example of collecting logs with lightweight `fluent-bit`, and forward to a central `fluentd` instance

## License

