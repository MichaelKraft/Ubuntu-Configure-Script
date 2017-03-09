##### Add keys
cd /tmp
wget http://download.opensuse.org/repositories/isv:ownCloud:desktop/Ubuntu_14.04/Release.key
sudo apt-key add - < Release.key
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
cd -

# Add Repositories
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo add-apt-repository ppa:webupd8team/sublime-text-2 -y
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_14.04/ /' >> /etc/apt/sources.list.d/owncloud-client.list"
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# Update APT
sudo apt-get update

# Install
sudo apt-get install spotify-client -y
sudo apt-get install google-chrome-stable -y
sudo apt-get install sublime-text -y
sudo apt-get install kubuntu-desktop -y
sudo apt-get install owncloud-client -y
sudo apt-get install git -y
sudo apt-get install vim -y
sudo apt-get install screen -y
sudo apt-get install cifs-utils -y

# Chrome's repo breaks apt later and it updates by itself anyway, this isn't needed.
sudo rm -f /etc/apt/sources.list.d/google*

# Add myself to sudoers.d
echo "michael ALL = NOPASSWD : ALL" > michael.temp
sudo chown root michael.temp
sudo chgrp root michael.temp
sudo mv michael.temp /etc/sudoers.d/michael

# Update lists, then update everything for good measure and reboot.
sudo apt-get update
sudo apt-get upgrade -y

sudo shutdown -r now
