#!/bin/bash

CLIBPFM4="Custom libpfm4"

if [ $# -gt 0 ]; then
    if [ "$1" = "--help" ]; then
        echo "$0 [clean]"
        exit 0
    fi
    if [ "$1" = "clean" ]; then
        echo "${CLIBPFM4} executing make clean"
        sudo make clean
        exit 0
    else
        echo "Unknown parameter: $1"
        exit 1
    fi
fi

git checkout docking
mkdir -p build
echo "${CLIBPFM4} build folder created"

sudo make && sudo make install && sudo make install-all && echo "${CLIBPFM4} compilation is done!"
