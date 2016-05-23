<!-- vim: ft=markdown
-->
# Renewal

## Usage


## `domains.txt`

## Auth 

DNS Providers and auth credentials are set by env variable (`docker run -e`).

Necessary variables differ for different DNS providers. See [lexicon](https://github.com/AnalogJ/lexicon#environmental-variables) for the variables you need.

For example, a digital ocean host can use:

```
docker run -e "PROVIDER=digitalocean" -e "LEXICON_DIGITALOCEAN_TOKEN=4b6038f40b513baeb8df05caeb5366ffdb7535205175d1f12623110bf196650f"
```

## File exchange


-----

## API Token
