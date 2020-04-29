#!/usr/bin/env bash

# Evaluate whether to build from official repo or fork
if [ -z "$TF_FORK"]
then
    tfFork=hashicorp
else
    tfFork=$(eval echo \$\{TF_FORK\})
fi

if [ -z "$TF_BRANCH"] 
then
    tfBranch=master
else
    tfBranch=$(eval echo \$\{TF_BRANCH\})
fi

echo Cloning the Terraform repository
git clone https://github.com/$tfFork/terraform.git src/github.com/hashicorp/terraform
cd src/github.com/hashicorp/terraform

echo Checking out the branch $tfBranch
git checkout $tfBranch

goVer="$(cat .go-version)"

echo Setting up Go...

echo Downloading Go...
wget --quiet https://dl.google.com/go/go$goVer.linux-amd64.tar.gz

echo Unpacking Go...
tar xf go$goVer.linux-amd64.tar.gz

echo Cleaning up a previous go install incase of reprovisioning...
sudo rm -rf /usr/local/go

echo putting Go in its place...
sudo mv -f ./go /usr/local

make tools


echo Exporting appropriate paths

# Go path to use the binary within the vm
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
echo "GOPATH=$HOME/go" >> ~/.profile
echo "PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.profile

echo Compiling/installing the feature branch
go install

# cp /home/vagrant/go/bin/terraform /home/vagrant/workspace/

echo Done. SSH into Vagrant and you should be good to go.