# docker-traefik-prometheus-grafana

Traefik v3 setup with Prometheus monitoring and Grafana interface.

- All traffic from port 80 is routed to port 443
- Dashboard is SSL secured by default and not accessible in port 8080
- Prometheus with BasicAuth enabled
- Grafana includes Traefik v3 dashboard
- Supports Docker Swarm mode

## Setup
1. clone the repo
2. create `.env` file from `.env.example`
* The default user and password for the dashboard is admin/admin.
make sure to generate a new password using 'htpasswd' and
replace it in your '.env' file
3. create your `conf/traefik.toml` file from `conf/conf.d/traefik.toml.example`
4. create your `conf/certificates.toml` file from `conf/conf.d/certificates.toml.example`
5. create your `conf/tls.toml` file from `conf/tls.toml.example`
6. place certificate and private key files in `certs` folder 
7. run `docker compose up -d`

## Network settings

This stack joins an external Docker network named `proxy` (shared with Traefik). Create it once before bringing the stack up:

```
docker network create proxy
```

Grafana and Prometheus setups are based on
[vegasbrianc traefik repository](https://github.com/vegasbrianc/docker-traefik-prometheus/)

Author: [RaveMaker][RaveMaker].

[RaveMaker]: http://ravemaker.net
 