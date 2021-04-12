#!/bin/sh

docker-compose \
    -f docker-compose.db.yml \
    -f docker-compose.wp1.yml \
    -f docker-compose.wp2.yml \
    -f docker-compose.nginx.yml \
    -f docker-compose.portainer.yml \
    "$@"
