#!/bin/bash

# do not run this as sudo

# Install vim
echo ">> install vim"
sudo apt-get update
sudo apt-get install -y \
	vim \
	vim-gnome \
	exuberant-ctags

echo ""
echo ">> installing pathogen (vim plugin manager)"
if [ ! -d ~/.vim/autoload ]; then
	mkdir -p ~/.vim/autoload
fi
if [ ! -d ~/.vim/bundle ]; then
	mkdir -p ~/.vim/bundle
fi
# download pathogen even it is already present
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo ""
echo ">> copying .vimrc file to home"
cp $(pwd)/my_vimrc ~/.vimrc

# Plugins
# go to the .vim/bundle folder
echo ""
cd ~/.vim/bundle

# TODO: if plugin is already present, update it

echo ">> install sensible.vim"
if [ ! -d $(pwd)/vim-sensible ]; then
	git clone git://github.com/tpope/vim-sensible.git
else
	echo "   already present"
fi

echo ""
echo ">> install molokai colorscheme"
if [ ! -d $(pwd)/molokai ]; then
	git clone https://github.com/tomasr/molokai
else
	echo "   already present"
fi

echo ""
echo ">> install surround"
if [ ! -d $(pwd)/vim-surround ]; then
	git clone https://github.com/tpope/vim-surround.git
else
	echo "   already present"
fi

echo ""
echo ">> install tagbar"
if [ ! -d $(pwd)/tagbar ]; then
	git clone https://github.com/majutsushi/tagbar
else
	echo "   already present"
fi

echo ""
echo ">> install vim-go"
if [ ! -d $(pwd)/vim-go ]; then
	git clone https://github.com/fatih/vim-go.git
else
	echo "   already present"
fi

echo ""
echo ">> install neocomplete"
if [ ! -d $(pwd)/neocomplete.vim ]; then
	git clone https://github.com/shougo/neocomplete.vim
else
	echo "   already present"
fi

echo ""
echo ">> install auto-pairs"
if [ ! -d $(pwd)/auto-pairs ]; then
	git clone git://github.com/jiangmiao/auto-pairs.git
else
	echo "   already present"
fi

echo ""
echo ">> install NERD commenter"
if [ ! -d $(pwd)/nerdcommenter  ]; then
	git clone https://github.com/scrooloose/nerdcommenter
else
	echo "  already present"
fi
