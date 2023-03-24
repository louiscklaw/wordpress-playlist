#!/usr/bin/env bash

set -ex

pushd docker
  docker compose -f docker-compose.dev.yml up -d --build
  docker compose -f docker-compose.dev.yml ps -a

  # docker compose -f docker-compose.dev.yml exec -it wordpress bash
  docker compose -f docker-compose.dev.yml logs -f

  # docker cp :/file/path/within/container /host/path/target
popd