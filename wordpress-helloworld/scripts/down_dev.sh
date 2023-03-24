#!/usr/bin/env bash

set -ex

pushd docker
  docker compose -f docker-compose.dev.yml kill
  docker compose -f docker-compose.dev.yml down -v --remove-orphans
  # docker compose -f docker-compose.dev.yml prune
popd
