#!/usr/bin/env bash

set -ex

sudo chown 1000:1000 -R ./app

npx browser-sync start \
    --proxy "localhost:32780" \
    --files "./app/**/*.php" \
    --files "./app/**/*.css" \
    --files "./app/**/*.js"

# npx browser-sync start \
#     --server \
#     --files "**/*.html"

# browser-sync start --proxy "localhost/your-wordpress-site"
