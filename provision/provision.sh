#!/bin/bash

mkdir -p /root/.ssh
cp /vagrant/files/root-key /root/.ssh/id_rsa
cp /vagrant/files/root-key.pub /root/.ssh/id_rsa.pub
chmod 400 /root/.ssh/id_rsa*
cp /vagrant/files/root-key.pub /root/.ssh/authorized_keys
sed -Ei 's/%sudo\s*ALL=\(ALL\:ALL\) ALL$/%sudo   ALL=(ALL:ALL) NOPASSWD:ALL/g' /etc/sudoers

getent passwd robot > /dev/null
if [ "$?" -ne 0 ]; then
  useradd -d /home/robot -m -s /bin/bash robot
  gpasswd -a robot sudo
  mkdir -p /home/robot/.ssh
  cp /vagrant/files/robot-key /home/robot/.ssh/id_rsa
	cp /vagrant/files/robot-key.pub /home/robot/.ssh/id_rsa.pub
  chmod 400 /home/robot/.ssh/id_rsa*
  cp /vagrant/files/robot-key.pub /home/robot/.ssh/authorized_keys
  chown -R robot: /home/robot/.ssh
fi

HOSTS=$(head -n7 /etc/hosts)
echo -e "$HOSTS" > /etc/hosts
echo '172.27.11.10 balancer.example.com' >> /etc/hosts
echo '172.27.11.20 webserver1.example.com' >> /etc/hosts
echo '172.27.11.30 webserver2.example.com' >> /etc/hosts
echo '172.27.11.40 database.example.com' >> /etc/hosts
