# alpine-nginx

Recent alpine + nginx with no change.

#### Run example

    docker run -d -v ./nginx-conf.d:/etc/nginx/conf.d:ro -p 80:80 -p 443:443 jokester/alpine-nginx

#### Configuration

- nginx 1.10.3 @ alpine 3.5
- `/sites.d/*.conf;` get included by top-level `http` block
