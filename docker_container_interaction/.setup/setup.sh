#!/bin/bash

set -euxo pipefail

if docker ps -a --format '{{.Names}}' | grep -w my-ubuntu-1 &> /dev/null; then
    docker rm -f my-ubuntu-1
fi

docker run -it -d --name my-ubuntu-1 ubuntu

if docker ps -a --format '{{.Names}}' | grep -w my-ubuntu-2 &> /dev/null; then
    docker rm -f my-ubuntu-2
fi

docker run -it -d --name my-ubuntu-2 ubuntu


exit 0
