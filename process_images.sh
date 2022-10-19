#!/usr/bin/env bash

# set shell settings (see https://sipb.mit.edu/doc/safe-shell/)
set -eu -o pipefail

# build with Docker
docker run -t --rm -u `id -u`:`id -g` -v `pwd`:/work -w /work \
    librepcb/librepcb-dev:webtools-1 \
    ./tools/process_images.sh
