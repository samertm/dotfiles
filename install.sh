#!/bin/bash

# Set up strict mode
set -euo pipefail
IFS=$'\n\t'

# First, make sure that all submodules are up-to-date.
git submodule update --init

# Now use 'stow' to stow all of the files in your home directory.
IGNORE=("README.md" "install.sh")
for f in * ; do
    for ignored_file in ${IGNORE[@]} ; do
        if [ $f = $ignored_file ] ; then
            continue 2 # Continue at top-level loop.
        fi
    done
    echo "Stowing $f"
    stow --target=$HOME $f
done
