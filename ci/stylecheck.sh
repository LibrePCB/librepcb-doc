#!/usr/bin/env bash

# set shell settings (see https://sipb.mit.edu/doc/safe-shell/)
set -euv -o pipefail

# check if all files have Unix line endings
! (git grep -Il $'\r' -- ':/' ':!/resources/workspace/')

# check if no file contains tabulators
! (git grep -Il $'\t' -- ':/' ':!/resources/workspace/')

# check if no file contains trailing spaces
! (git grep -Il ' $' -- ':/' ':!/resources/workspace/')
