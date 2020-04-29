# Basico
apt-get update
apt-get install -y apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common

# Ansible
echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' > /etc/apt/sources.list.d/ansible.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367
apt-get update
apt-get install -y ansible

# Java 8
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
apt-get update
apt-get install -y adoptopenjdk-8-hotspot uuid-runtime

# Rundeck
if [ ! -f rundeck_3.2.6.20200427-1_all.deb ]; then
	wget -q https://dl.bintray.com/rundeck/rundeck-deb/rundeck_3.2.6.20200427-1_all.deb
	dpkg -i rundeck_3.2.6.20200427-1_all.deb
fi

sed -i 's/localhost/172.27.11.10/g' /etc/rundeck/rundeck-config.properties
sed -i 's/localhost/172.27.11.10/g' /etc/rundeck/framework.properties
systemctl restart rundeckd
