#! /bin/bash

# Connect the Traefik container to all frontend networks.

docker=/usr/bin/docker

$docker network create proxy
