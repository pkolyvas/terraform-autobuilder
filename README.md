# Terraform Autobuilder

This is a simple Vagrant file and some scripts to setup a disposable environment for Terraform builds to assist in testing, validating and/or debugging new features of Terraform.

## Requirements
- Vagrant

## What you'll have

At the moment, running `vagrant up` will:
- Get you a bionic (18.04) base image
- Install and configure Go 1.13.x 
- Download and build a specific feature branch of Terraform 0.12: https://github.com/hashicorp/terraform/tree/f-tfignore
- Expose a workspace that you can use to import/clone your Terraform project into and use within the Vagrant VM


## To Do
- An easy way to access credentials or something from within Vagrant
- So much more
