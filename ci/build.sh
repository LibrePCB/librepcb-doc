#!/usr/bin/env bash

# set shell settings (see https://sipb.mit.edu/doc/safe-shell/)
set -eufv -o pipefail

# build HTML
asciidoctor --failure-level=WARN --safe index.adoc

# build PDF
asciidoctor-pdf --failure-level=WARN --safe -a source-highlighter=rouge index.adoc

# clear artifacts
rm -rf ./artifacts

# copy HTML to artifacts directory
mkdir -p ./artifacts/librepcb-doc
FILES=`find . -type f -name '*\.html' -o -name '*\.png'`
cp --parents $FILES ./artifacts/librepcb-doc

# copy PDF to artifacts directory
mkdir -p ./artifacts/nightly_builds
cp index.pdf ./artifacts/nightly_builds/librepcb-user-manual-nightly.pdf
