""" theme """
colorscheme darcula 

""" customizations """
set path=.,,**
setlocal path = "/usr/local/Cellar/**2/include/**2"
set nocompatible
set autochdir
set autoread
set ttyfast
set visualbell
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set number
set autowrite
set laststatus=2
set clipboard=unnamedplus
set encoding=utf-8
filetype plugin indent on
set cursorline
set ignorecase
set spell spelllang=en_us
set viminfo='100,<1000,s1000
set directory^=$HOME/.vim/swap//
set backspace=indent,eol,start
"no delay entering normal mode
set timeoutlen=1000 ttimeoutlen=0
let mapleader = ","

" status line
set statusline =%0*\%f              " file path 
set statusline+=\ \ %r%w%m\ \       " modified, ro
set statusline+=\ %=b%n\            " buffer number 
set statusline+=\%p%%\ %L\ \        " line no. and pct

"persistent splits
command Bd b#|bd #

au InsertEnter * set norelativenumber 
au InsertLeave * set relativenumber

"DiffOrig
command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis | wincmd p | diffthis

"autosave
"autocmd InsertLeave <buffer> write
" save automatically when text is changed
set updatetime=200
au CursorHold * silent! update

""" keybinds """


"clear search highlights
nnoremap <esc><esc> :noh<return>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"buffer cycling
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

"retain folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

""" netrw """
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
let ghregex='\(^\|\s\s\)\zs\.\S\+'
let g:netrw_list_hide=ghregex
nnoremap <silent> <Leader>e :Lexplore<cr>


""" lang config """

"tags
:set tags=~/mytags

"python
au Filetype python set
    \  tabstop=4	
    \  softtabstop=4	
    \  shiftwidth=4	
    \  textwidth=79	
    \  expandtab	
    \  autoindent	
    \  fileformat=unix
let python_highlight_all=1
syntax on

"java
let java_highlight_all=1
