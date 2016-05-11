rm ~/.bash_profile
ln ~/ownCloud/DotFiles/profile ~/.bash_profile
rm ~/.aliases
ln ~/ownCloud/DotFiles/aliases ~/.aliases
mkdir ~/.git
ln ~/ownCloud/DotFiles/gitconfig ~/.git/config
rm ~/.ssh/config
ln ~/ownCloud/DotFiles/sshconfig ~/.ssh/config
rm -rf ~/Pictures
rm -rf ~/Documents
rm -rf ~/Music
ln -s ~/ownCloud/Pictures ~/Pictures
ln -s ~/ownCloud/Documents ~/Documents
ln -s ~/ownCloud/Music ~/Music
