#!/usr/bin/env bash

mkdir go

echo Exporting appropriate paths
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
echo "GOPATH=$HOME/go" >> ~/.profile
echo "PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.profile
# source /home/vagrant/.profile

echo Cloning the Terraform repository
git clone https://github.com/hashicorp/terraform.git $GOPATH/src/github.com/hashicorp/terraform
cd $GOPATH/src/github.com/hashicorp/terraform

# go mod tidy
echo Compliling Tools
make tools
echo Compliling Terrform Master
make dev
echo Removing the master build artifact
rm /home/vagrant/go/bin/terraform
git stash
git stash clear

echo Checking out the f-tfignore branch
git checkout f-tfignore
make tools

echo Compiling the feature branch
make dev

cp /home/vagrant/go/bin/terraform /home/vagrant/workspace/

echo Done. SSH into Vagrant and you should be good to go.