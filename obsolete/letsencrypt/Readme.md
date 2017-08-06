# A one-shot container to issue/renew letsencrypt certificates with DNS challenge

## Powered by [lexicon](https://github.com/AnalogJ/lexicon) / [letsencrypt.sh](https://github.com/lukas2511/letsencrypt.sh)

## Run

```
docker run -v /var/letsencrypt:/data --rm jokester/letsencrypt
```

If it did not succeed,
check `/var/letsencrypt/Readme.md` ([github](https://github.com/jokester/Dockerfiles/blob/master/letsencrypt/data-seed/Readme.md))
and `modify /var/letsencrypt/*` as needed.

## Credentials for DNS challenge

You will need auth credentials (aka API keys / tokens) from your DNS providers.

(In case you are curious, these credentials are used to create a TXT record in the domain, and convince letsencrypt that you really own it.)

The credentials can be set with `docker run -e`, or with `/var/letsencrypt/env` in container.

For example, a digital ocean user can use:

```
docker run -e "PROVIDER=digitalocean" -e "LEXICON_DIGITALOCEAN_TOKEN=aaaabbbb12344321" jokester/letsencrypt
```

See [lexicon](https://github.com/AnalogJ/lexicon#environmental-variables) for the required variables for your provider.

