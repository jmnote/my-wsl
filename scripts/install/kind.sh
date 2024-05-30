#!/bin/bash

# check
which kind && exit

# install
VERSION=$(curl -s https://api.github.com/repos/kubernetes-sigs/kind/releases/latest | grep -oP 'tag_name": "\K[^"]+')
curl -L https://kind.sigs.k8s.io/dl/${VERSION}/kind-linux-amd64 -o kind
chmod +x kind
mv kind /usr/local/bin/kind
kind version

