set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails'
Bundle 'quickrun.vim'
Bundle 'Shougo/unite.vim'
"Bundle 'Shougo/neocomplcache'
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-surround'
let g:surround_{char2nr("(")} = "(\r)"
Bundle 'skuroki/vim-statusline'

filetype plugin indent on     " required!

set incsearch
set showcmd
set number
set cursorline

