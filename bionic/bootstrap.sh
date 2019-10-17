#!/usr/bin/env bash

goVer=1.12.10

apt-get update
apt-get install -y build-essential

echo Setting up Go...

echo Downloading Go...
wget --quiet https://dl.google.com/go/go$goVer.linux-amd64.tar.gz

echo Unpacking Go...
tar xf go$goVer.linux-amd64.tar.gz

echo Cleaning up a previous go install incase of reprovisioning...
rm -rf /usr/local/go

echo putting Go in its place...
mv -f ./go /usr/local

