#!/bin/bash

# Set up strict mode
set -euo pipefail
IFS=$'\n\t'

# First, make sure that all submodules are up-to-date.
git submodule update --init
# Make sure that 'bin' exists so it isn't created as a symlink.
mkdir -p ~/bin

# Now use 'stow' to stow all of the files in your home directory.
for filename in * ; do
    if [[ -d $filename ]] ; then
        echo "Stowing $filename"
        stow --target=$HOME $filename
    fi
done
