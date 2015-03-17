# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :private_network, ip: "10.10.10.10"
  config.vm.provider :virtualbox do |v|
    v.customize ["modifyvm", :id, "--memory", 1024]
	v.customize ["modifyvm", :id, "--ostype", "Ubuntu_64"]
  end

  $rootcmds = <<-EOF
    apt-get update 
    DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
    apt-get -y install rake ruby-bundler curl git unzip
    apt-get -y install ruby1.9.3
    update-alternatives --install /usr/bin/gem gem /usr/bin/gem1.9.3 400
    update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby1.9.3 500
    echo "this is a test" >> /tmp/test.txt
  EOF

  config.vm.provision "shell", inline: $rootcmds
  
end
