#!/bin/sh
osver="$(awk -F= '/^NAME/{print $2}' /etc/os-release)"
osver="${osver#\"}"
osver="${osver%\"}"
ipadd="$(ip route get 8.8.8.8 | awk -F"src " 'NR==1{split($2,a," ");print a[1]}')"
echo "IP Address = $ipadd"

echo "Found $osver operating system installed"


if [[ $osver == "CentOS Linux" ]]
then 
echo "Would you like install Cockpit? (Read all details at https://cockpit-project.org/)"
echo "Proceed? (y/n): "
read proceed
echo "proceed = $proceed"
if [[ ( $proceed ==  "Y" || $proceed == "y" ) ]]
then
echo "Starting..."

echo "Enabling epel-release repository..."
yum -y install epel-release
yum -y install cockpit
yum -y install cockpit-storaged
firewall-cmd --add-service=cockpit --permanent
systemctl enable cockpit.socket --now
firewall-cmd --reload

echo "Cockpit install completed. Please visit  http://$ipadd:9090/ to get to the interface."
echo "Use your OS user name and password to login"

else
echo "See you later!"
fi
else 
echo "This scipt is only supported on CentOS Linux. Exiting..."

fi 
