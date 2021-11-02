#!/usr/bin/env bash

# set shell settings (see https://sipb.mit.edu/doc/safe-shell/)
set -eufv -o pipefail

# build HTML
asciidoctor --failure-level=WARN --safe -a stylesheet=style.css index.adoc

# build PDF
asciidoctor-pdf --failure-level=WARN --safe -a source-highlighter=rouge index.adoc

# clear artifacts
rm -rf ./artifacts
mkdir -p ./artifacts

# copy HTML to artifacts directory
mkdir -p ./artifacts/html
FILES=`find . -type f -name '*\.html' -o -name '*\.png'`
cp --parents $FILES ./artifacts/html

# copy PDF to artifacts directory
cp index.pdf ./artifacts/librepcb-user-manual-nightly.pdf
