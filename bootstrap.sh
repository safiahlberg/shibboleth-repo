#!/usr/bin/env bash

cp /vagrant/environment /etc/environment
cp /vagrant/shibboleth-sp.repo /etc/yum.repos.d/shibboleth-sp.repo
cp /vagrant/createrepo.sh /home/vagrant

# Install the packages needed to create a repo
yum -y install yum-plugin-downloadonly yum-utils createrepo
