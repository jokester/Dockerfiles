# alpine-nextcloud

NextCloud 12 instance (nginx / php-fpm / PgSQL) with alpine linux 3.6

## Before use

- Pick a database password (search for `TODO` in docker-compose.yml)
- set `server_name` in `nginx-conf.d/nextcloud.conf"
- (strongly advised) obtain a propper SSL cerficcate, and enable https

## First run: set up Nextcloud

When opening Nextcloud in browser for first time, fill in the following fields:

- data folder: `/var/www/html/data` (no need to change)
- database type: PostgreSQL
- database user / password: the password you set in `docker-compose.yml`
- database name: anything you like
- database hostname: `nextcloud-db`
