#!/usr/bin/env bash

DIST=$PWD/dist

mkdir -p $DIST
rm -rf $DIST/output.zip

pushd src/wp-content/themes/twentytwentytwo
  rm -rf ./node_modules
  zip -r $DIST/output.zip .
popd
