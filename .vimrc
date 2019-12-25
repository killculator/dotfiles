syntax on
imap jj <Esc>
set path=~/code/**
set wildignore+=*/node_modules/*,*/__pycache__/*,*/target/*,*/venv/*
set undodir=~/.vim/undo
set backspace=indent,eol,start
set updatetime=1200
set belloff=all
set ignorecase
set undofile
set nowrap
filetype plugin indent on
au CursorHold,CursorHoldI * update
au BufReadPost *.svelte set syntax=html
