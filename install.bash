#!/bin/bash

# do not run this as sudo

echo ">> installing main tools"
sudo apt update
sudo apt install -y \
    git-all \
    meld \
    build-essential \
    python-numpy python-scipy python-matplotlib \
    curl

echo ""
echo ">> copying .gitconfig file to home"
cp $(pwd)/.gitconfig ~/.gitconfig

echo ""
echo ">> copying .bash_aliases file to home"
cp $(pwd)/.bash_aliases ~/.bash_aliases

echo ""
echo ">> copying go-dev-tools.bash script to ~/bin"
mkdir -p $HOME/bin
cp $(pwd)/go-dev-tools.bash $HOME/bin/