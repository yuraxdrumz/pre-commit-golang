#!/usr/bin/env bash
for file in "$@"; do
    go generate "$file"
done
