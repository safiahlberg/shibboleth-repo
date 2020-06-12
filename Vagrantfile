# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision :shell, path: "createrepo.sh"
end
