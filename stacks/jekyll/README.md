# Docker: Jekyll
Dockerfile for Jekyll.

docker-compose file includes:
 - Jekyll New - Creates a new Jekyll website in `jekyll-new` folder
 - Jekyll Serve - `jekyll serve`
 - Jekyll Prod - `jekyll build` and serve with nginx
 - Traefik v3 support

## Setup
1. clone the repo
2. create `.env` file from `.env.example`

## Create new Jekyll website
1. create folder `jekyll-new`
2. change ownership of jekyll-new folder `chown 1000:1000 jekyll-new -R`
3. run `docker-compose -f docker-compose.new.yml up`

## Development
1. create folder `jekyll` and copy your Jekyll project there.
2. change ownership of jekyll folder `chown 1000:1000 jekyll -R`
3. run `docker-compose -f docker-compose.serve.yml up`

- Jekyll will watch the `jekyll` folder and will rebuild the site
when a change is made to any of the files.

## Production
1. create folder `jekyll` and copy your Jekyll project there.
2. change ownership of jekyll folder `chown 1000:1000 jekyll -R`
3. run `docker compose up -d`

Jekyll will build the static site from the `jekyll` folder and docker
will copy it to a new nginx-alpine container without the build tools.
That way we get a clean nginx production container that
contains the static website.

## Network settings

This stack joins an external Docker network named `proxy` (shared with Traefik). Create it once before bringing the stack up:

```
docker network create proxy
```

Author: [RaveMaker][RaveMaker].

[RaveMaker]: http://ravemaker.net
