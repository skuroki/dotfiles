#!/bin/sh
for dotfile in `ls -A1 files`
do
  echo $dotfile
  ln -is `pwd`/files/$dotfile ~
done

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +":BundleInstall" +:qa
mkdir -p ~/.config/nvim/
ln -s ~/.vimrc ~/.config/nvim/init.vim
nvim +":BundleInstall" +:qa

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
