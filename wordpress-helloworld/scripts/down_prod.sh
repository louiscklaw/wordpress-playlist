#!/usr/bin/env bash

set -ex

pushd docker
  docker compose -f docker-compose.prod.yml kill
  docker compose -f docker-compose.prod.yml down
popd
