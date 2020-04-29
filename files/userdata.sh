#!/bin/bash

apt-get install -y wget

wget https://apt.puppetlabs.com/puppet6-release-buster.deb
sudo dpkg -i puppet6-release-buster.deb

echo '10.128.0.13 puppet' >> /etc/hosts

apt-get update
apt-get install -y puppet-agent
