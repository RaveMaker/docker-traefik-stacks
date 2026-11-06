# Docker: Gallrey3
Dockerfile for Gallery3 with mSMTP client, PHP7.3.

docker-compose file includes:
 - PHP7.3/Apache
 - MariaDB
 - Backup
 - Docker Swarm support
 - Traefik v3 support

## Important
This setup assumes your reverse proxy (Traefik/Nginx) works with https, port 443.

## Setup:
1. clone the repo
2. create `.env` file from `.env.example`
3. create `msmtp/msmtprc` from `msmtp/msmtprc.example`
4. Place Gallery3 in html folder
5. create `msmtp/msmtprc` from `msmtp/msmtprc.example`
6. run `docker compose up -d`

## Network settings

This stack joins an external Docker network named `proxy` (shared with Traefik). Create it once before bringing the stack up:

```
docker network create proxy
```

Author: [RaveMaker][RaveMaker].

[RaveMaker]: http://ravemaker.net
