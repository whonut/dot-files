cd ~/Documents/Code

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Bundles
Plugin 'gmarik/Vundle.vim'
Plugin 'nvie/vim-flake8'
Plugin 'oplatek/Conque-Shell'
Plugin 'vim-scripts/vim-creole'
call vundle#end()

" General
syntax on
colorscheme slate
filetype plugin indent on
set ruler
set number
set smarttab
set expandtab
set autoindent
set guifont=Menlo:h17
set autoread
set autochdir
set tabstop=4
set shiftwidth=4
filetype plugin on
set backspace=indent,eol,start
" Define left-handed navigation shortcuts
nnoremap h a
nnoremap j s
nnoremap k w
nnoremap l d
" paren etc. autocomplete
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap ( ()<Left>
inoremap { {}<Left>
" treat .pyde as python
autocmd BufNewFile,BufRead *.pyde set syntax=python
" Pandoc stuff
command! Makepdf exe "! pandoc \"%\" -o \"" . expand("%:t:r") . ".pdf\"" 
let g:pandoc#folding#fold_yaml = 1
let g:pandoc#syntax#conceal#use = 0
let g:pandoc#syntax#codeblocks#embeds#langs = ["python", "c", "cpp"]
" git commit message stuff
autocmd Filetype gitcommit setlocal spell textwidth=72
