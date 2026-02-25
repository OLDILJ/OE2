echo Checking Hostname
hostname
sudo hostnamectl set-hostname $1
echo Checking Hostname Status
hostnamectl status
echo "127.0.1.1 $1" >> /etc/hosts
echo "Pinging New Hostname"
ping -c 3 $1
