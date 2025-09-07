#!/bin/bash

setupPath() {
    case "$SHELL" in
        */zsh)
            if ! grep -q 'export PATH="$PATH:$HOME/.bin"' ~/.zshrc; then
                echo 'export PATH="$PATH:$HOME/.bin"' >> ~/.zshrc
            fi
            ;;
        */bash)
            if ! grep -q 'export PATH="$PATH:$HOME/.bin"' ~/.bashrc; then
                echo 'export PATH="$PATH:$HOME/.bin"' >> ~/.bashrc
            fi
            ;;
    esac
}

setup() {
    local bin_dir="$HOME/.bin"

    if [ ! -d "$bin_dir" ]; then
        echo "Creating bin directory: $bin_dir"
        mkdir -p "$bin_dir"
    fi

    setupPath
    echo "Done! Restart your shell or run: source ~/.${SHELL##*/}rc"
}

setup

