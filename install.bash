#!/bin/bash

# do not run this as sudo

echo ">> installing main tools"
sudo apt-get update
sudo apt-get install -y \
    git-all \
    meld \
    build-essential \
    python-numpy python-scipy python-matplotlib \
    curl

echo ""
echo ">> copying .gitconfig file to home"
cp $(pwd)/my_gitconfig ~/.gitconfig

echo ""
echo ">> create my go folders in Projects"
if [ ! -d ~/Projects/dev-tools ]; then
	mkdir -p ~/Projects/dev-tools/{bin,pkg,src}
fi
if [ ! -d ~/Projects/go-libs ]; then
	mkdir -p ~/Projects/go-libs/{bin,pkg,src}
fi

echo ""
echo ">> copying .bashrc_extension file to home"
cp $(pwd)/my_bashrc_extension ~/.bashrc_extension

