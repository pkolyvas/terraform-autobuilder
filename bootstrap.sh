#!/usr/bin/env bash

apt-get update
apt-get install -y build-essential

echo Setting up Go
wget --quiet https://dl.google.com/go/go1.13.1.linux-amd64.tar.gz
tar xf go1.13.1.linux-amd64.tar.gz
mv ./go /usr/local

