# Terraform Autobuilder

This is a simple Vagrant file and some scripts to setup a disposable environment for Terraform builds to assist in testing, validating and/or debugging new features of Terraform.

## Requirements
- Vagrant (and virtualbox or similar)

## How to use
- `vagrant up` will get you a version of Terraform compiled from the `master` branch
- Set an environment variable named `BRANCH` on your host machine to build a branch of your choice

## What you'll have

At the moment, running `vagrant up` will:
- Get you a bionic (18.04) base image
- Install and configure Go 1.13.x 
- Download and build a specific feature branch of Terraform if specified, otherwise it will build from `master`
- Expose a workspace that you can use to import/clone your Terraform project into and use within the Vagrant VM


## To Do
- An easy way to access credentials or something from within Vagrant
- Target a specifc Go version
- So much more
