set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-rails'
let g:rails_projections = {
			\   "app/admin/*.rb": {
			\     "command": "admin",
			\     "alternate": [
			\       "spec/features/admin/%i_spec.rb",
			\       "spec/features/admin/%p_spec.rb"
			\     ]
			\   },
			\   "spec/features/admin/*_spec.rb": {
			\     "alternate": [
			\       "app/admin/%i.rb",
			\       "app/admin/%p.rb",
			\     ]
			\   },
			\   "spec/factories/*.rb": {
			\     "command": "factory"
			\   }
			\ }
Bundle 'quickrun.vim'
Bundle 'Shougo/unite.vim'
Bundle 'kmnk/vim-unite-giti'
Bundle 'Shougo/neocomplcache'
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_underbar_completion = 1
Bundle 'tpope/vim-abolish'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
let g:surround_{char2nr("(")} = "(\r)"
let g:surround_{char2nr("-")} = "<%- \r -%>"
let g:surround_{char2nr("#")} = "#{\r}"
let g:surround_{char2nr("d")} = "do\n\r\nend"
let g:surround_{char2nr("p")} = "p(\r)"
Bundle 'YankRing.vim'
let g:yankring_manual_clipboard_check = 0
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'Emmet.vim'
let g:user_emmet_settings = {
    \  'indentation' : '  ',
    \}
Bundle 'kchmck/vim-coffee-script'
Bundle 'thinca/vim-threes'
Bundle 'rking/ag.vim'
Bundle 'itchyny/lightline.vim'

filetype plugin indent on     " required!

set incsearch
set showcmd
set number
set cursorline
set wildmode=list:longest
set fileformats=unix,dos,mac
set laststatus=2

set expandtab
set tabstop=2
set shiftwidth=2

" highlight trailing whitespaces
" from https://github.com/holysugar/dotfiles/blob/master/.vimrc
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let maplocalleader = ','
nnoremap <LocalLeader>s :execute "!bundle exec rspec -bXc -f d -l ".line('.')." %"<CR>
nnoremap <LocalLeader>y :execute "!~/dotfiles/files/gitwhy % ".line('.')<CR>
nnoremap <LocalLeader>b :!git blame %<CR>
nnoremap <LocalLeader>l :!git log %<CR>
nnoremap <LocalLeader>r :source ~/.vimrc<CR>
nnoremap <LocalLeader>c :!cat %<CR>

onoremap _ t_

autocmd FileType ruby setlocal ts=2 sw=2 expandtab

autocmd QuickFixCmdPost *grep* cwindow

autocmd BufRead,BufNewFile *.arb setfiletype ruby

syntax enable
