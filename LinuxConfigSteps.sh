﻿# Set bios time as local time to avoid issues in dual boot.
 timedatectl set-local-rtc 1

# Install grub customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
sudo apt-get update
sudo apt-get install grub-customizer -y

# Install preload (Need to check the effectiveness before applying)
sudo apt-get install preload


# Touchpad noise cancelation set to 10 units and set time out to disable touchpad while typing to 100 ms


# NOT RECOMMENDED: Changing swaappiness value: NOT RECOMMENDED to change the default value.
# To improve the system performance allocate sufficient SWAP space for linux
echo “vm.swappiness = 10” | sudo tee -a /etc/sysctl.conf

# NOT RECOMMENDED: Reduce buff/cache usage of RAM
echo 3 | sudo tee /proc/sys/vm/drop_caches


# Android studio AVD manager unable to start due to memory card not found issue
sudo apt-get install lib32stdc++6

# If android emulator eats up lot of CPU disable hw.audioInput & hw.audioOutput
hw.audioInput=no 
hw.audioOutput=no
# The file is found at ~/.android/avd/myAVD.avd/config.ini


# To resolve the occasional write permission failure for windows DATA: install
sudo apt-get install ntfs-config -y
sudo ntfs-config
# Enable read/write for the drives. 

# Alternate option for above method: add
UUID=9EAE111CAE10EE91   /media/yuva/DATA        ntfs-3g defaults,locale=en_IN   0       0
# Option in /etc/fstab

# Poor fonts for GTk applications and libre-office in kde ?
sudo apt-get install libreoffice-gtk3
sudo apt-get install tango-icon-theme


# Turn on Anti-aliasing for smooth fonts on libre office and other non-supported apps
SystemSettings > fonts > use anti-aliasing(Enabled) > configure...
Sub-pixel rendering type (RGB) > Hinting (Slight)

# Random freezes with KDE Neon LTS/ Ubuntu LTS
# Keyboard, mouse, screen becomes unresponsive and stays that way
sudo nano /etc/default/grub
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash" --> GRUB_CMDLINE_LINUX_DEFAULT="quiet splash intel_idle.max_cstate=1"
sudo update-grub
sudo reboot


# When phantomjs does not run headless in digital ocean
# run this on your IAAS platform
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2
bzip2 -d phantomjs-2.1.1-linux-x86_64.tar.bz2
tar -xvf phantomjs-2.1.1-linux-x86_64.tar
sudo cp phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/bin/phantomjs


# Install boot repair for repair GRUB issues with UEFI installation
sudo add-apt-repository ppa:yannubuntu/boot-repair
sudo apt-get update
sudo apt-get install -y boot-repair && boot-repair

