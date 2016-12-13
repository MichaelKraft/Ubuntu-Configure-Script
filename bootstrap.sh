# Add me to sudoers
sudo echo "michael ALL = NOPASSWD : ALL" > /etc/sudoers.d/michael

##### Add keys
cd /tmp
wget http://download.opensuse.org/repositories/isv:ownCloud:desktop/Ubuntu_14.04/Release.key
sudo apt-key add - < Release.key
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
cd -

# Add Repositories
sudo add-apt-repository ppa:webupd8team/sublime-text-2 -y
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_14.04/ /' >> /etc/apt/sources.list.d/owncloud-client.list"
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# Update APT
sudo apt-get update

# Install
sudo apt-get install sublime-text -y
sudo apt-get install owncloud-client -y
sudo apt-get install git -y
sudo apt-get install vim -y
sudo apt-get install screen -y
sudo apt-get install cifs-tools -y
sudo apt-get install spotify-client -y
sudo apt-get install kubuntu-desktop -y

# Update lists, then update everything for good measure.
sudo apt-get update
sudo apt-get upgrade -y

# Add devbox to /etc/fstab
sudo echo "//genesis/devbox /media/devbox cifs username=michael,password=######,iocharset=utf8,sec=ntlm 0 0" >> /etc/fstab


