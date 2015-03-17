#!/bin/bash

DefaultPuppetRoot="/vagrant"

PuppetRoot=${1:-$DefaultPuppetRoot} 

DEBIAN_FRONTEND=noninteractive # apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
dpkg -i puppetlabs-release-trusty.deb
apt-get update
apt-get install -y puppet 
   
puppet apply --modulepath ${PuppetRoot}/modules ${PuppetRoot}/manifests/site.pp