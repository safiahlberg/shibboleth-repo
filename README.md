# shibboleth-repo
Used to create a Shibboleth repository package for installation with YUM.

In this case we are using Centos 7 in a Vagrant box
https://app.vagrantup.com/centos/boxes/7

## Getting started
Install [Vagrant](https://www.vagrantup.com/docs/installation/) and [VirtualBox](https://www.virtualbox.org/) according to https://www.vagrantup.com/intro/getting-started

## Create a repo
Execute `vagrant up` and then copy the result with `copyrepo.sh`, the result will then be copied to the local file shibboleth.tar.bz2

### Manual handling
You can ssh into the box with `vagrant ssh` (provided that you started it with `vagrant up`). This is may be usefull if you wan't to do something more with the packages before creating the final package-file.