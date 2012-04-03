#!/bin/sh
for dotfile in `ls -A1 files`
do
  echo $dotfile
  ln -bs `pwd`/files/$dotfile ~
done

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle