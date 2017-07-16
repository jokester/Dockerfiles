# nginx-front

nginx that does nothing. you will have to include custom server blocks.

#### Run

    docker run -d -v /NGINX/SITES:/sites.d -p 80:80 -p 443:443 jokester/nginx-front

#### Configuration

- nginx 1.10.3 @ alpine 3.5
- `/sites.d/*.conf;` get included by top-level `http` block
- nothing more
