## nginx-rtmp

## deprecated

You do not need this. nginx 1.10 in Alpine Linux already have `nginx-rtmp-module` compiled.

Output of `nginx -V 2>&1 | sed 's/ /\n/g'`:

```text
nginx
version:
nginx/1.10.3
built
with
LibreSSL
2.4.4
TLS
SNI
support
enabled
configure
arguments:
--prefix=/var/lib/nginx
--sbin-path=/usr/sbin/nginx
--modules-path=/usr/lib/nginx/modules
--conf-path=/etc/nginx/nginx.conf
--pid-path=/run/nginx/nginx.pid
--lock-path=/run/nginx/nginx.lock
--http-client-body-temp-path=/var/lib/nginx/tmp/client_body
--http-proxy-temp-path=/var/lib/nginx/tmp/proxy
--http-fastcgi-temp-path=/var/lib/nginx/tmp/fastcgi
--http-uwsgi-temp-path=/var/lib/nginx/tmp/uwsgi
--http-scgi-temp-path=/var/lib/nginx/tmp/scgi
--with-perl_modules_path=/usr/lib/perl5/vendor_perl
--user=nginx
--group=nginx
--with-threads
--with-file-aio
--with-ipv6
--with-http_ssl_module
--with-http_v2_module
--with-http_realip_module
--with-http_addition_module
--with-http_xslt_module=dynamic
--with-http_image_filter_module=dynamic
--with-http_geoip_module=dynamic
--with-http_sub_module
--with-http_dav_module
--with-http_flv_module
--with-http_mp4_module
--with-http_gunzip_module
--with-http_gzip_static_module
--with-http_auth_request_module
--with-http_random_index_module
--with-http_secure_link_module
--with-http_slice_module
--with-http_stub_status_module
--with-http_perl_module=dynamic
--with-mail=dynamic
--with-mail_ssl_module
--with-stream=dynamic
--with-stream_ssl_module
--add-dynamic-module=/home/buildozer/aports/main/nginx/src/ngx_devel_kit-0.3.0
--add-dynamic-module=/home/buildozer/aports/main/nginx/src/echo-nginx-module-0.60
--add-dynamic-module=/home/buildozer/aports/main/nginx/src/ngx-fancyindex-0.4.1
--add-dynamic-module=/home/buildozer/aports/main/nginx/src/headers-more-nginx-module-0.32
--add-dynamic-module=/home/buildozer/aports/main/nginx/src/lua-nginx-module-0.10.7
--add-dynamic-module=/home/buildozer/aports/main/nginx/src/nchan-1.0.8
--add-dynamic-module=/home/buildozer/aports/main/nginx/src/nginx-upload-progress-module-0.9.2
--add-dynamic-module=/home/buildozer/aports/main/nginx/src/nginx-rtmp-module-1.1.10
```

--------------


`nginx` build with [arut/nginx-rtmp-module](https://github.com/arut/nginx-rtmp-module/releases)

--------------


[Dockerfile](https://github.com/jokester/Dockerfiles/tree/master/nginx-rtmp)
