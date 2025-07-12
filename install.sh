#!/bin/sh
for dotfile in `ls -A1 files`
do
  echo $dotfile
  ln -sf `pwd`/files/$dotfile ~
done

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +":BundleInstall" +:qa
mkdir -p ~/.config/nvim/
ln -s ~/.vimrc ~/.config/nvim/init.vim
nvim +":BundleInstall" +:qa
