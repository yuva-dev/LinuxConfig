#! /bin/bash
# JAVA 8 for android studio
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer -y
sudo apt-get install oracle-java8-set-default -y

# Set hardware time as local time
timedatectl set-local-rtc 1

# Install grub customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo apt-get update
sudo apt-get install grub-customizer -y

# Fix for android studio emulator
sudo apt-get install lib32stdc++6 -y

# latest ntfs drivers
sudo apt-get install ntfs-config -y
echo "Run ntfs-config to configure manually later"

# install git
sudo apt-get install git -y
echo "Configure git user email/username manually later..."

# install heroku
sudo apt-get install curl -y
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./" -y
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install heroku -y

# install node
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# install visual studio
# Check if the installation proceedss without any hiccup
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code -y

# GTK themes for KDE Desktop environment
sudo apt-get install libreoffice-gtk3 -y
sudo apt-get install tango-icon-theme -y

# Pip installer for python
sudo apt-get install python-pip -y

# install mongodb in ubuntu 16.04 base
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
sudo apt-get update
sudo apt-get install -y mongodb-org
# startng mongod service
sudo service mongod start

#Installing partition manager for KDE
sudo apt-get install partitionmanager -y

#Install pycharm IDE
echo "deb http://archive.getdeb.net/ubuntu $(lsb_release -cs)-getdeb apps" | sudo tee /etc/apt/sources.list.d/getdeb-apps.list
wget -q -O- http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install pycharm -y

#Installing requistes for using google analytics api
pip install --upgrade google-api-python-client
