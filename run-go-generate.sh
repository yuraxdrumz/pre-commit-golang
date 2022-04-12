#!/usr/bin/env bash
for file in "$@"; do
    echo "running go generate on $file"
    go generate "$file"
done
