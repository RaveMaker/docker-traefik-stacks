# Docker Traefik Stacks

A curated collection of complete Docker Compose stacks for Traefik v3 — each one a deployable unit with the app, database, storage, networking, and routing already wired together.

Deploy Traefik once, then bring stacks online with `docker compose up -d`. Add, update, or remove stacks independently without touching the others.

## Repository Structure

```text
docker-traefik-stacks/
├── traefik/
└── stacks/
    ├── apache-php/
    ├── cms/
    ├── drupal6/
    ├── drupal8/
    ├── gallery3/
    ├── jekyll/
    ├── mediawiki/
    ├── nginx/
    ├── nginx-php-fpm/
    ├── prometheus-grafana/
    ├── python/
    └── wordpress/
```

## Features

- Docker Compose based deployments
- Shared Traefik reverse proxy
- HTTPS-ready architecture
- Consistent stack layouts
- Easy customization
- Reusable deployment patterns
- Production-friendly configuration

## Available Stacks

- Apache PHP
- CMS
- Drupal 6
- Drupal 8
- Gallery3
- Jekyll
- MediaWiki
- Nginx
- Nginx PHP-FPM
- Prometheus + Grafana
- Python
- WordPress

## Deployment Workflow

### 1. Create the Shared Proxy Network

Create the external Docker network used by all stacks.

```bash
./connect.sh
```

### 2. Deploy Traefik

```bash
cd traefik

cp .env.example .env

docker compose up -d
```

Configure your certificates and Traefik settings as required.

### 3. Deploy an Application Stack

Example: WordPress

```bash
cd stacks/wordpress

cp .env.example .env

docker compose up -d
```

The stack will automatically connect to the shared Traefik network and become available through the configured hostname.

### 4. Deploy Additional Stacks

```bash
cd stacks/mediawiki
docker compose up -d

cd ../prometheus-grafana
docker compose up -d
```

## Migration Notice

This repository consolidates multiple standalone projects into a single collection of Docker Compose stacks for easier maintenance and consistency.

## Author

**Adam Mallul (RaveMaker)**

- GitHub: https://github.com/RaveMaker
- Website: https://ravemaker.net
