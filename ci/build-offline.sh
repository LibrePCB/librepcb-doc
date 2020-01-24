#!/usr/bin/env bash

# set shell settings (see https://sipb.mit.edu/doc/safe-shell/)
set -eufv -o pipefail

# start hugo in background, then get its process ID
hugo serve &
PID=$!

# wait until Hugo is ready to receive requests in port 1313.
# It is safer to do it this way, since builds eventually may
# take a lot due to various server conditions
while ! echo | nc localhost 1313; do sleep 1; done

# let wget create an offline version. Hugo is amazing, but
# it relies on directory index (eg: /path/) instead of using
# links to "index.html". If "relativeURLs" and "uglyURLs" are
# enabled, HTMLs are generated just fine, but image links are
# not changed to reflect the new link structure. In a
# nutshell, this way is easier.
wget --mirror --convert-links --adjust-extension --page-requisites http://localhost:1313/

# now we kill Hugo and prepare the ZIP
kill $!
mv localhost:1313 librepcb-doc
zip -r bundle.zip librepcb-doc
