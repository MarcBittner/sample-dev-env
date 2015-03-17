#!/bin/bash

apt-get update 
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
apt-get -y install rake ruby-bundler curl git unzip
apt-get -y install ruby1.9.3
update-alternatives --install /usr/bin/gem gem /usr/bin/gem1.9.3 400
update-alternatives --install /usr/bin/ruby ruby /usr/bin/ruby1.9.3 500

echo "this is a test" >> /tmp/test.txt