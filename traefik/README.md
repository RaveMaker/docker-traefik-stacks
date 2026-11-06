# docker-traefik

Traefik v3 reverse proxy for the stacks in this repository.

Containers are discovered automatically over a shared external Docker network named `proxy`. HTTP on port 80 is redirected to HTTPS on port 443. TLS certificates and cipher options are loaded from `conf/traefik-tls.toml`.

## Features

- Traefik v3 (`traefik:3`)
- Automatic HTTP → HTTPS redirect
- Docker provider with `exposedByDefault = false`
- Shared external `proxy` network
- File-based TLS certificates and options
- Config reload when TLS settings change

## Setup

1. Create the shared proxy network (once):

```
docker network create proxy
```

Or run `./connect.sh`, which does the same thing.

2. Place your certificate and private key files in the `certs/` folder.  
   Defaults expected by `conf/traefik-tls.toml`:

- `certs/traefik.crt` / `certs/traefik.key`
- `certs/star.traefik.crt` / `certs/star.traefik.key`

3. Review `conf/traefik.toml` and `conf/traefik-tls.toml` if you need different entrypoints, providers, or certificates.

4. Start Traefik:

```
docker compose up -d
```

## Network settings

This Traefik stack uses an external Docker network named `proxy`. Create it before bringing Traefik (or any application stack) up:

```
docker network create proxy
```

Application stacks attach their public-facing services to the same `proxy` network so Traefik can route to them. Private services (databases, etc.) stay on stack-local backend networks.

## Older versions

Legacy setups are kept for reference under `traefik-v1/` and `traefik-v2/`. Prefer this v3 configuration for new deployments.

Author: [RaveMaker][RaveMaker].

[RaveMaker]: http://ravemaker.net
