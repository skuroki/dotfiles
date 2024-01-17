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
			\   },
			\   "test/factories/*.rb": {
			\     "command": "factory"
			\   },
			\   "app/decorators/*_decorator.rb": {
			\     "command": "decorator"
			\   }
			\ }
Bundle 'quickrun.vim'
Bundle 'Shougo/unite.vim'
Bundle 'kmnk/vim-unite-giti'
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
Bundle 'itchyny/lightline.vim'
Bundle 'ngmy/vim-rubocop'
Bundle 'w0rp/ale'
let g:ale_fixers = {
      \   'ruby': ['rubocop'],
      \}
highlight ALEWarning ctermbg=blue
Bundle 'leafgarland/typescript-vim'
Bundle 'prabirshrestha/vim-lsp'
Bundle 'mattn/vim-lsp-settings'
Bundle 'prabirshrestha/asyncomplete.vim'
Bundle 'prabirshrestha/asyncomplete-lsp.vim'
let g:lsp_diagnostics_echo_cursor = 1
let g:lsp_diagnostics_echo_delay = 200
let g:lsp_diagnostics_virtual_text_enabled = 0
let g:lsp_diagnostics_signs_enabled = 1
let g:lsp_settings_filetype_ruby = ['solargraph', 'steep']
Bundle 'mattn/vim-lsp-icons'
Bundle 'kassio/neoterm'
let g:neoterm_autoscroll = 1
Bundle 'slim-template/vim-slim.git'
Bundle 'github/copilot.vim'

filetype plugin indent on     " required!

set incsearch
set showcmd
set number
set cursorline
set wildmode=list:longest
set fileformats=unix,dos,mac
set laststatus=2
set pastetoggle=<LocalLeader>p
set clipboard+=unnamedplus

" tab
set tabstop=2
set shiftwidth=2
set expandtab

" encoding
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,euc-jp

" highlight trailing whitespaces
" from https://github.com/holysugar/dotfiles/blob/master/.vimrc
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

let maplocalleader = ','
nnoremap <LocalLeader>s :w<CR>:execute "T bundle exec rspec -f d %:".line('.')<CR>
nnoremap <LocalLeader>S :w<CR>:execute "T bundle exec rspec -f d %"<CR>
nnoremap <LocalLeader>t :execute "T bundle exec rails test %:".line('.')<CR>
nnoremap <LocalLeader>T :execute "T bundle exec rails test %"<CR>
nnoremap <LocalLeader>y :execute "T ~/dotfiles/files/gitwhy % ".line('.')<CR>
nnoremap <LocalLeader>b :T git blame %<CR>
nnoremap <LocalLeader>l :T git log %<CR>
nnoremap <LocalLeader>L :T bundle exec rubocop 
nnoremap <LocalLeader>r :source ~/.vimrc<CR>
nnoremap <LocalLeader>c :T cat %<CR>
nnoremap <LocalLeader>a :execute "T ag --noheading ".expand('<cword>')<CR>
nnoremap <LocalLeader>w :execute "T ag --noheading -w ".expand('<cword>')<CR>
nnoremap <LocalLeader>p :set paste<CR>
nnoremap <LocalLeader>n :set nopaste<CR>
nnoremap <LocalLeader><LocalLeader> :T an 

onoremap _ t_

autocmd FileType ruby setlocal ts=2 sw=2 expandtab
autocmd FileType cpp  setlocal ts=4 sw=4 expandtab

autocmd QuickFixCmdPost *grep* cwindow

autocmd BufRead,BufNewFile *.arb setfiletype ruby
autocmd BufRead,BufNewFile Steepfile setfiletype ruby

syntax enable

" vimdiffの色設定
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21
