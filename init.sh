#!/bin/bash

# create directories
mkdir -p vim/bundle

# get vundle
git clone https://github.com/gmarik/vundle.git $PWD/vim/bundle/vundle

# links
today=`date +%Y%m%d`
if [ -f "$HOME/.vimrc" ]; then
	mv $HOME/.vimrc $HOME/.vimrc.backup.${today}
fi
if [ -d "$HOME/.vim" ]; then
	mv $HOME/.vim $HOME/.vim.backup.${today}
fi
if [ -f "$HOME/.bashrc" ]; then
	mv $HOME/.bashrc $HOME/.bashrc.backup.${today}
fi
if [ -d "$HOME/.bash_profile" ]; then
	mv $HOME/.bash_profile $HOME/.bash_profile.backup.${today}
fi
ln -s $PWD/vimrc $HOME/.vimrc
ln -s $PWD/vim $HOME/.vim
ln -s $PWD/bashrc $HOME/.bashrc
ln -s $PWD/bash_profile $HOME/.bash_profile

echo "Done!"
