#!/usr/bin/env bash +x
for file in "$@"; do
    echo "running on $file"
    protoc -I $file --go_out=plugins=grpc:$PWD/communication/rpc/ $file
done
