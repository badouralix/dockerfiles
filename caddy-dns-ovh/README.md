# caddy-dns-ovh

[![Docker Pulls](https://img.shields.io/docker/pulls/badouralix/caddy-dns-ovh?label=pulls&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/caddy-dns-ovh)
[![Docker Stars](https://img.shields.io/docker/stars/badouralix/caddy-dns-ovh?label=stars&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/caddy-dns-ovh)
[![Docker Image Version (latest by date)](https://img.shields.io/docker/v/badouralix/caddy-dns-ovh?logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/caddy-dns-ovh)
[![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/badouralix/caddy-dns-ovh?label=size&logo=docker&logoColor=white)](https://hub.docker.com/r/badouralix/caddy-dns-ovh)

This **Dockerfile** builds [`caddy`](https://hub.docker.com/_/caddy) with the [OVH module](https://github.com/caddy-dns/ovh).

See the repo on [Docker Hub](https://hub.docker.com/r/badouralix/caddy-dns-ovh/).

## Usage

See <https://caddyserver.com/docs/json/apps/tls/automation/policies/issuers/acme/challenges/dns/provider/ovh/> for configuration details.

```bash
docker run \
    --detach \
    --label "com.datadoghq.ad.logs"='[{"service": "caddy", "source": "go"}]' \
    --name caddy \
    --publish 443:443 \
    --restart always \
    -v caddy-config:/config -v caddy-data:/data -v caddy-etc:/etc/caddy \
    badouralix/caddy-dns-ovh
```

## License

Unless expressly stated otherwise, all contents licensed under the [MIT License](https://github.com/badouralix/dockerfiles/blob/main/LICENSE).
