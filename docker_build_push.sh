#!/usr/local/bin/bash

VERSION=v2.11.0
REPO=registry.cp.kpn-dsh.com/dsh/kubernetes-replicator

CGO_ENABLED=0 GO111MODULE=on GOOS=linux GOARCH=amd64 go build
docker build . -t $REPO:$VERSION
docker push $REPO:$VERSION
