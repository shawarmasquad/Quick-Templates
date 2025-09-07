#!/bin/bash

setupPath(){
    # export PATH="PATH:"
   
}

setup() {
    local bin_dir="$HOME/.bin"
    
    if [ ! -d "$bin_dir" ]; then
        echo "Bin directory: $bin_dir"
        mkdir -p "$bin_dir" # -p creates parent directories if needed
    fi
}

setup
