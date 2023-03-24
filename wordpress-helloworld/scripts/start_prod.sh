#!/usr/bin/env bash

set -ex

pushd docker
  docker compose -f docker-compose.prod.yml up -d --build
  docker compose -f docker-compose.prod.yml ps -a

  docker compose -f docker-compose.prod.yml logs -f
popd
