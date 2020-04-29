#!/bin/bash

mkdir -p /root/.ssh
cp /vagrant/files/id_rsa* /root/.ssh
chmod 400 /root/.ssh/id_rsa*
cp /vagrant/files/id_rsa.pub /root/.ssh/authorized_keys

HOSTS=$(head -n7 /etc/hosts)
echo -e "$HOSTS" > /etc/hosts
echo '172.27.11.10 balancer.example.com' >> /etc/hosts
echo '172.27.11.20 webserver1.example.com' >> /etc/hosts
echo '172.27.11.30 webserver2.example.com' >> /etc/hosts
echo '172.27.11.40 database.example.com' >> /etc/hosts
