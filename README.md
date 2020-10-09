# Terraform Autobuilder

This is a simple Vagrant file and some scripts to setup a disposable environment to assist in testing, validating and/or debugging new features of Terraform. It can also help with testing branches of Terraform as part of merging pull requests or evaluating specific contributions.

## Requirements
- Vagrant (and virtualbox or similar)

## How to use
- `vagrant up` will get you a version of Terraform compiled from the fork and branch of your choosing. If you choose to do nothing the official HashiCorp Terraform repository master branch will be built.
- Set an environment variable named `TF_FORK` on your host machine to build a fork of your choice. `TF_FORK` is simply the github username or organization that owns the fork you'd like to build. Defaults to the official`hashicorp/terraform` repository.
- Set an environment variable named `TF_BRANCH` on your host machine to build a branch of your choice. Defaults to `master`.
- `vagrant ssh` will get you a console with Terraform ready to go. 

## What you'll have

At the moment, running `vagrant up` will:
- Get you a bionic (18.04) or focal (20.04) base image
- Download and build a specific fork and feature branch of Terraform if specified (along with the version of Go required), otherwise it will build from the HashiCorp Terraform repository `master` branch
- Expose a workspace that you can use to import/clone your Terraform project into and use within the Vagrant VM
- If you have ENV vars on your host named `AWS_ACCESS_KEY_ID` and `AWS_SECRET_KEY`, they will be forwarded to the vagrant box for use/testing


## To Do
- Get the windows version working.
