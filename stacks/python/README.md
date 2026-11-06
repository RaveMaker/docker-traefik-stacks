# Docker: Python
Dockerfile for Python3, includes Traefik support.

docker-compose file includes:
 - Python3
 - Docker Swarm support
 - Traefik v3 support

## Setup:
1. clone the repo
2. create `.env` file from `.env.example`
3. place your python app in 'app' folder
4. app should have a 'requirements.txt' file at 'app/requirements.txt'
5. run `docker compose up -d`

## WSGI Server
In prod we will use a server instead of running the app with python. 
For example I will use 'Gunicorn' server but you can use whatever you want.

1. make sure you have 'gunicorn==...' in your 'requirements.txt' file
2. override 'CMD/ENTRYPOINT' using `docker-compose.override.yml`:

```
version: "3.7"

services:
  python:
    command: ["gunicorn", "b", "0.0.0.0:80"]
    entrypoint: ["/app/main.py"]
```

## Network settings

This stack joins an external Docker network named `proxy` (shared with Traefik). Create it once before bringing the stack up:

```
docker network create proxy
```

Author: [RaveMaker][RaveMaker].

[RaveMaker]: http://ravemaker.net

