#!/usr/bin/env bash

goVer=1.12.10

apt-get update
apt-get install -y build-essential

echo Setting up Go
wget --quiet https://dl.google.com/go/go$goVer.linux-amd64.tar.gz
tar xf go$goVer.linux-amd64.tar.gz
mv ./go /usr/local

