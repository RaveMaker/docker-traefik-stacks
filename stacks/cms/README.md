# Docker: CMS
Dockerfile for CMS (Contest Management System).

docker-compose file includes:
 - CMS
 - RWS
 - Postgres
 - Docker Swarm support
 - Traefik v3 support

## Setup:
1. clone the repo
2. create `.env` file from `.env.example`
3. create `cms.conf` from `config/cms.conf.sample`
4. create `cms.ranking.conf` from `config/cms.ranking.conf.sample`
5. create `isolate.conf` from `config/isolate.conf.sample`
6. run `randomize-secret.sh` in `config` dir
7. run `docker compose up -d`

## Network settings

This stack joins an external Docker network named `proxy` (shared with Traefik). Create it once before bringing the stack up:

```
docker network create proxy
```

Author: [RaveMaker][RaveMaker].

[RaveMaker]: http://ravemaker.net