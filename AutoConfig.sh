#! /bin/bash
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

# install git
sudo apt-get install git -y

# install heroku
sudo apt-get install curl -y
sudo add-apt-repository "deb https://cli-assets.heroku.com/branches/stable/apt ./" -y
curl -L https://cli-assets.heroku.com/apt/release.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install heroku -y

# install node
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

