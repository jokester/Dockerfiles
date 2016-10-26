# owncloud-caddy

Runs owncloud 9 in alpine linux, with auto-issued `Let's Encrypt` https certificate.

<!-- TODO badge here -->

#### Note

This image *must* be used with a domain. If you want to go with IP address, use [this image](https://hub.docker.com/r/jokester/owncloud/) instaed.

#### Quick start

A simplest configuration: non-persistent data volume, serves at port 80 (http) and 443 (Let's Encrypt https).

    docker run -d --restart=unless-stopped -p 80:80 -p 443:443 -e DOMAIN=my-domain.com jokester/owncloud-caddy

Warning: files will be lost when the container gets removed. See following `Run with data volumes` if this is not you want.

#### Run with data volumes (Recommended)

The image defines 2 data volumes. They should be owned by uid `65534:65534`.

- `/data`: documents of owncloud users (*not* encrypted, be careful if other people have access to the server)
- `/config`: configuration of owncloud

A full example with 2 data volumes:

```
mkdir -pv /oc/data /oc/config
chown 65534:65534 /owncloud-data /owncloud-conf
docker run -d --restart=unless-stopped -p 80:80 -p 443:443 -v /oc-data:/data -v /oc/config:/config -e DOMAIN=my-domain.com jokester/owncloud-caddy
```

#### Configuration

- caddy 0.8.3 (outmost http server)
- owncloud 9.0 / sqlite
- nginx 1.10 / php5.6
- s6 for service supervision

#### Dockerfile

[Dockerfile @ github](https://github.com/jokester/Dockerfiles/tree/master/owncloud-caddyfile)
