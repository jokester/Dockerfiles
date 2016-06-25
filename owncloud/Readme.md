# owncloud

#### Owncloud

#### Run
    docker run -d -v /OWNCLOUD/DATA:/data -v /OWNCLOUD/CONF:/config -p 20080:80 jokester/owncloud

#### Note
`/OWNCLOUD/DATA` `/OWNCLOUD/CONF` should be owned by uid `65534:65534`

#### Configuration
- owncloud 9 / nginx 1.10 / php5
- nginx listens on 80

