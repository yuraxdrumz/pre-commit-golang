#!/usr/bin/env bash
for file in "$@"; do
    protoc -I $file --go_out=plugins=grpc:$PWD/communication/rpc/ $file
done
