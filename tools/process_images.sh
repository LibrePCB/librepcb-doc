#!/bin/sh

# set shell settings (see https://sipb.mit.edu/doc/safe-shell/)
set -eu -o pipefail

FILES=`git diff-tree --no-commit-id --name-only --diff-filter=AM -r HEAD -- *.png`
for f in $FILES
do
  echo "$f"
  ./tools/process_image.sh "$f"
done
