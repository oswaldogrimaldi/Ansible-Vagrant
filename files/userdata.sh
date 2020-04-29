#!/bin/bash

# Squid
echo 'export http_proxy=http://10.142.0.43:3128' >> /etc/profile
echo 'export https_proxy=http://10.142.0.43:3128' >> /etc/profile
. /etc/profile

apt-get install -y wget

wget https://apt.puppetlabs.com/puppet6-release-buster.deb
sudo dpkg -i puppet6-release-buster.deb

echo '10.128.0.13 puppet' >> /etc/hosts

apt-get update
apt-get install -y puppet-agent

cat >> /etc/puppetlabs/puppet/puppet.conf <<EOF
http_proxy_host = 10.142.0.43
http_proxy_port = 3128
no_proxy = localhost, 127.0.0.1, puppet
EOF

/opt/puppetlabs/bin/puppet agent -t
