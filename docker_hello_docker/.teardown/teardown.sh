#!/bin/bash

set -euxo pipefail

if docker ps --format '{{.Names}}' | grep -w my-nginx &> /dev/null; then
    docker rm -f my-nginx
fi

exit 0
