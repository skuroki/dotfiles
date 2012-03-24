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
let g:surround_{char2nr("-")} = "<%- \r -%>"
let g:surround_{char2nr("#")} = "#{\r}"
let g:surround_{char2nr("d")} = "do\n\r\nend"
Bundle 'skuroki/vim-statusline'
Bundle 'YankRing.vim'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'ZenCoding.vim'
let g:user_zen_settings = { 'indentation' : '  ' }
Bundle 'kchmck/vim-coffee-script'

filetype plugin indent on     " required!

set incsearch
set showcmd
set number
set cursorline

" highlight trailing whiltespaces
" from https://github.com/holysugar/dotfiles/blob/master/.vimrc
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

