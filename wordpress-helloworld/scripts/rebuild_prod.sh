#!/usr/bin/env bash

set -ex

./scripts/down_prod.sh
sleep 1

./scripts/start_prod.sh
