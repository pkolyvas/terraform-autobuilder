#!/usr/bin/env bash

# Set your branch here
tfBranch=f-tfignore

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

echo Checking out the branch
git checkout $tfBranch
make tools

echo Compiling/installing the feature branch
go install

# cp /home/vagrant/go/bin/terraform /home/vagrant/workspace/

echo Done. SSH into Vagrant and you should be good to go.