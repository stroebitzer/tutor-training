#!/bin/bash

set -euxo pipefail

if docker ps -a --format '{{.Names}}' | grep -w my-ubuntu-1 &> /dev/null; then
    docker rm -f my-ubuntu-1
fi

if docker ps -a --format '{{.Names}}' | grep -w my-ubuntu-2 &> /dev/null; then
    docker rm -f my-ubuntu-2
fi

exit 0
