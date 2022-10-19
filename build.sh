#!/usr/bin/env bash

# set shell settings (see https://sipb.mit.edu/doc/safe-shell/)
set -eu -o pipefail

# build with Docker
docker run -t --rm -u `id -u`:`id -g` -v `pwd`:/work -w /work \
    librepcb/librepcb-dev:webtools-1 \
    antora --fetch antora-playbook.yml

# Rename PDF
mv ./build/site/librepcb/librepcb.pdf \
   ./build/site/librepcb/librepcb-documentation.pdf
