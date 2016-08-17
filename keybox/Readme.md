keybox @ alpine linux

---------------------

[OWASP KeyBox](https://www.owasp.org/index.php/OWASP_KeyBox) is a web-based SSH console that centrally manages administrative access to systems.

This image runs KeyBox with OpenJRE in a alpine linux container.

A simple try: start a KeyBox server with port 8443 and https (self-signed certificate). Default username/password is `admin` / `changeme`

    # docker run -d -p 8443:8443 jokester/keybox


To keep key database in another volume:

    - Mount a volume at `/keydb`, e.g. `docker run -v /persist/keybox-keydb:/keydb`

To use a proper https certificate, a simple way would be adding a reverse proxy.
See [nginx-example.conf](#TODO) for an nginx configuration with (websocket proxying and https certificate).

Non-default options over KeyBox Release
- limits JVM memory to min=16M, max=64M (not always effective)
- Use 4096bit RSA key
- Append to instead of overwrite `authorized_keys` (`keyManagementEnabled=false`)
<!-- - Allow user to set public key (`forceUserKeyGeneration=false`) -->


[Dockerfile](https://github.com/jokester/Dockerfiles/blob/master/keybox/Dockerfile)
