# Terraform Autobuilder

This is a simple Vagrant file and some scripts to setup a disposable environment to assist in testing, validating and/or debugging new features of Terraform and or testing branches of Terraform as part of merging pull requests or evaluating specific contributions.

## Requirements
- Vagrant (and virtualbox or similar)

## How to use
- `vagrant up` will get you a version of Terraform compiled from the fork and branch of your choosing. If you choose to do nothing the official HashiCorp Terraform repository master branch will be built.
- Set an environment variable named `TF_FORK` on your host machine to build a fork of your choice. `TF_FORK` is simply the github username or organization that owns the fork you'd like to build. Defaults to the official`hashicorp/terraform` repository.
- Set an environment variable named `TF_BRANCH` on your host machine to build a branch of your choice. Defaults to `master`.

## What you'll have

At the moment, running `vagrant up` will:
- Get you a bionic (18.04) base image
- Download and build a specific feature branch of Terraform (along with the version of Go required) if specified, otherwise it will build from `master`
- Expose a workspace that you can use to import/clone your Terraform project into and use within the Vagrant VM


## To Do
- Get the windows version working.
