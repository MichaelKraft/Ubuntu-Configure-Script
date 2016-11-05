##### Add keys
cd /tmp
wget http://download.opensuse.org/repositories/isv:ownCloud:desktop/Ubuntu_14.04/Release.key
sudo apt-key add - < Release.key
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
cd -

# Add Repositories
sudo add-apt-repository ppa:webupd8team/sublime-text-2 -y
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_14.04/ /' >> /etc/apt/sources.list.d/owncloud-client.list"

# Update APT
sudo apt-get update

# Install
sudo apt-get install sublime-text -y
sudo apt-get install owncloud-client -y
sudo apt-get install git -y
sudo apt-get install vim -y
sudo apt-get install screen -y
sudo apt-get install cifs-tools -y

# Update lists, then update everything for good measure.
sudo apt-get update
sudo apt-get upgrade -y

# Add devbox to /etc/fstab
sudo echo "//genesis/devbox /media/devbox cifs username=michael,password=######,iocharset=utf8,sec=ntlm 0 0" >> /etc/fstab

# Add me to sudoers
sudo echo "michael ALL = NOPASSWD : ALL" > /etc/sudoers.d/michael

