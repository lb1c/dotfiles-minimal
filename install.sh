#!/bin/bash

set -eu

for name in *; do
    target="$HOME/.$name"
    if [ -e "$target" ]; then
        if [ ! -L "$target" ]; then
            echo "WARNING: $target exists but is not a symlink."
        fi
    else
        if [ "$name" != "install.sh" ] && [ "$name" != "README" ]; then
            echo "Creating $target"
            ln -s "$PWD/$name" "$target"
        fi
    fi
done

if ! grep -q '# source custom environment' ~/.profile; then
    echo >> ~/.profile
    echo '# source custom environment' >> ~/.profile
    echo '[ -f $HOME/.environment ] && . $HOME/.environment' >> ~/.profile
fi
