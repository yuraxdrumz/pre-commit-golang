#!/usr/bin/env bash +x
for file in "$@"; do
    protoc -I $(dirname $file) --go_out=plugins=grpc:./communication/rpc $file
done
