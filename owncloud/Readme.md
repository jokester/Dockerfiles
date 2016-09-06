# Owncloud

This image runs owncloud in alpine linux.

[![](https://images.microbadger.com/badges/image/jokester/owncloud.svg)](http://microbadger.com/images/jokester/owncloud "Get your own image badge on microbadger.com")

#### Quick start

Default configuration: non-persistent data volume, serves at port 20080(http) and 443(self-signed https).

    docker run -d --restart=always -p 20080:80 -p 20443:443 jokester/owncloud

Warning: files will be lost when the container gets removed. Use data volumes (`docker run -v`) if this is not you want.

#### Data volumes (optional)

- `/data`: documents of owncloud users (*not* encrypted, be careful if other people have access to the server)
- `/conf`: configuration of owncloud

Data volumes at `/data` or `/conf` should be owned by uid `65534:65534`.

- `/nginx.d`: custom configuration of nginx

`/nginx.d/*.conf` files are included in nginx's `http {}` block. See [the default self-signed http](https://github.com/jokester/Dockerfiles/tree/master/owncloud/nginx.d/) for an example.

A full example with 3 data volumes:

    docker run -d --restart=always                                                       \
        -p 20080:80 -p 20443:443                                                         \
        -v /var/lib/owncloud/data:/data -v /var/lib/owncloud/config:/config -v /var/lib/owncloud/nginx.d:/nginx.d \
        jokester/owncloud

#### Configuration

- owncloud 9.0 / sqlite
- nginx 1.10 / php5.6
- s6 for service supervision

#### Dockerfile

[Dockerfile @ github](https://github.com/jokester/Dockerfiles/tree/master/owncloud)
