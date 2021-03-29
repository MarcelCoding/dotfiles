#! /usr/bin/env sh

cd ~/dotfiles

if [ ! -d ".git" ]; then
  echo "Please clone the repository into \"~/dotfiles\"."
  exit 1
fi

rm -rf data
mkdir -p data

echo "Updatding package lists..."
echo
sudo apt-get update > /dev/null

#echo "Installing stow..."
#echo
#sudo apt install -y stow
#echo

echo "Installing tools... (nano, htop, curl, unzip)"
echo
sudo apt install -y nano htop curl unzip

#echo
#echo "Installing .dotfiles..."
#stow -nvt ~ *

echo
echo "Linking .bash_aliases..."
rm -rf ~/.bash_aliases
ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases

echo
echo "Installing nano syntax support..."
wget -qO nanorc.zip https://github.com/scopatz/nanorc/archive/refs/heads/master.zip
unzip -qq nanorc.zip
rm -rf nanorc.zip ~/.nanorc
mv nanorc-master data/nano
echo "include ~/dotfiles/data/nano/*.nanorc" >> ~/.nanorc
