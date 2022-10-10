#!/bin/bash

set -euxo pipefail

if docker ps --format '{{.Names}}' | grep -w my-nginx &> /dev/null; then
    docker rm -f my-nginx
fi

docker run -it -d --name my-nginx -p 9000:80 nginx
