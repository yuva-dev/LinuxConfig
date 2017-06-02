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
