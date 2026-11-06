# Docker: Drupal-6
Dockerfile for Drupal-6 with mSMTP client.

docker-compose file includes:
 - Drupal 6
 - MariaDB
 - Backup
 - Docker Swarm support
 - Traefik v3 support

## Setup:
1. clone the repo
2. create `.env` file from `.env.example`
3. create `msmtp/msmtprc` from `msmtp/msmtprc.example`
4. run `docker compose up -d`

## Network settings

This stack joins an external Docker network named `proxy` (shared with Traefik). Create it once before bringing the stack up:

```
docker network create proxy
```

Author: [RaveMaker][RaveMaker].

[RaveMaker]: http://ravemaker.net
 