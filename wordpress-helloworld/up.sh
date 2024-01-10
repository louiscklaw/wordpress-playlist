#!/usr/bin/env bash

set -x

docker compose -f docker-compose.dev.yml kill
docker compose -f docker-compose.dev.yml down
sleep 1

# docker volume rm wordpress-helloworld_wordpress_helloworld_db_mysql

set -ex

docker compose -f docker-compose.dev.yml build
docker compose -f docker-compose.dev.yml restart
docker compose -f docker-compose.dev.yml up 

# sudo chown 1000:1000 -R . 

# docker compose exec -it wordpress_helloworld_app bash
