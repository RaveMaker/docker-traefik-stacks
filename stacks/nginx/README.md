# docker-nginx

docker-compose for Nginx as a static web server with Traefik support.

Nginx default.conf also includes support for personal home folder (same as userdir mod for apache)

## Setup:
1. clone the repo
2. create `.env` file from `.env.example`
3. run `docker compose up -d`

- to use the 'userdir_mod' behaviour:
1. mount your users home/group folder to ./home
2. in docker-compose.yml file uncomment:

```
#- ./home:/home:ro
```

## Network settings

This stack joins an external Docker network named `proxy` (shared with Traefik). Create it once before bringing the stack up:

```
docker network create proxy
```

Author: [RaveMaker][RaveMaker].

[RaveMaker]: http://ravemaker.net
 