# !/usr/bin/env bash

sudo rm -rf ./gatsby/app/node_modules

set -ex

docker compose up -d --build
# sudo chown logic:logic -R ./

# docker compose exec -it gatsby bash
docker compose logs -f

# wordpress-helloworld-wordpress-1
docker cp /var/www/html 

# sudo rm -rf ./wordpress/var/www/html/*
# sudo docker cp a9c27d021d10:/var/www/html/ ./wordpress/var/www/
# sudo chown logic:logic -R ./wordpress/var/www