#!/bin/sh
for dotfile in `ls -A1 files`
do
  echo $dotfile
  ln -bs `pwd`/files/$dotfile ~
done
