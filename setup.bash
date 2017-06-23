#!/usr/bin/env bash

# steam
sudo apt install steam;

# lutris
ver=$(lsb_release -sr); if [ $ver != "16.10" -a $ver != "17.04" -a $ver != "16.04" ]; then ver=16.04; fi;

echo "deb http://download.opensuse.org/repositories/home:/strycore/xUbuntu_$ver/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list;

wget -q http://download.opensuse.org/repositories/home:/strycore/xUbuntu_$ver/Release.key -O- | sudo apt-key add -;

sudo apt update && sudo apt install lutris;

# spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886;

echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list;

sudo apt update && sudo apt install spotify-client;

# obs
sudo apt install ffmpeg;
sudo add-apt-repository ppa:obsproject/obs-studio;
sudo apt update && sudo apt install obs-studio;

# eclipse
sudo apt install eclipse;

# google chrome
wget -O ~/google-chrome-stable_current_amd64.deb 'https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb';
gdebi ~/google-chrome-stable_current_amd64.deb;
rm ~/google-chrome-stable_current_amd64.deb;

# private internet access
wget -O ~/pia-v70-installer-linux.tar.gz 'https://installers.privateinternetaccess.com/download/pia-v70-installer-linux.tar.gz';

tar -xzf ~/pia-v70-installer-linux.tar.gz;
rm ~/pia-v70-installer-linux.tar.gz;
~/pia-v70-installer-linux.sh;
rm ~/pia-v70-installer-linux.sh;

# discord
wget -O ~/discord-0.0.1.deb 'https://dl.discordapp.net/apps/linux/0.0.1/discord-0.0.1.deb';
gdebi ~/discord-0.0.1.deb;
rm ~/discord-0.0.1.deb;

# vmware
wget -O VMware-Player-12.5.7-5813279.x86_64.bundle 'https://download3.vmware.com/software/player/file/VMware-Player-12.5.7-5813279.x86_64.bundle';

chmod +x VMware-Player-12.5.7-5813279.x86_64.bundle;
rm VMware-Player-12.5.7-5813279.x86_64.bundle;

sudo apt update;
