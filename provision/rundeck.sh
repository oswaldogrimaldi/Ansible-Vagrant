# Java 8 e Ansible
apt-get update
apt-get install -y apt-transport-https ca-certificates wget dirmngr gnupg software-properties-common uuid-runtime ansible
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
apt-get update
apt-get install -y adoptopenjdk-8-hotspot

# Rundeck
if [ ! -f rundeck_3.2.6.20200427-1_all.deb ]; then
	wget -q https://dl.bintray.com/rundeck/rundeck-deb/rundeck_3.2.6.20200427-1_all.deb
	dpkg -i rundeck_3.2.6.20200427-1_all.deb
fi

sed -i 's/localhost/172.27.11.10/g' /etc/rundeck/rundeck-config.properties
sed -i 's/localhost/172.27.11.10/g' /etc/rundeck/framework.properties
systemctl restart rundeckd
