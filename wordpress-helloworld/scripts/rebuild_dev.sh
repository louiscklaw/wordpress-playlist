#!/usr/bin/env bash

set -ex

./scripts/down_dev.sh
sleep 1

./scripts/start_dev.sh