##### Add keys
cd /tmp
wget http://download.opensuse.org/repositories/isv:ownCloud:desktop/xUbuntu_14.04/Release.key
sudo apt-key add - < Release.key
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
cd -

# Add Repositories
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo add-apt-repository ppa:webupd8team/sublime-text-2 -y
sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_14.04/ /' >> /etc/apt/sources.list.d/owncloud-client.list"

# Update APT
sudo apt-get update

# Install
sudo apt-get install google-chrome-stable -y
sudo apt-get install sublime-text -y
sudo apt-get install kubuntu-desktop -y
sudo apt-get install owncloud-client -y
sudo apt-get install git -y
sudo apt-get install vim -y
sudo apt-get install screen -y

# Update everything else, just to be sure
sudo apt-get upgrade -y
