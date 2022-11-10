#!/bin/bash

VERSION="$(cat /usr/share/bunkerweb/VERSION | tr -d '\n')"
sed -i "s/%VERSION%/${VERSION}/g" .fpm

fpm -t "$1" -p "/data/bunkerweb.$1"