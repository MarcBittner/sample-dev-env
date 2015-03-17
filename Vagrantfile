﻿# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :private_network, ip: "10.10.10.10"
  
  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--memory", 1024]
	v.customize ["modifyvm", :id, "--ostype", "Ubuntu_64"]
  end

  config.vm.provision :shell, :path => "bootstrap.sh"
  
end
