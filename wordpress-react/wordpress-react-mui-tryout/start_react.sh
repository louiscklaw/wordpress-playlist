#!/usr/bin/env bash

set -ex

pushd wordpress/var/www/html/wp-content/themes/react-tryout/react-src
  yarn -D
  yarn start
popd
