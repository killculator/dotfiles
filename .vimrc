""" theme """
colorscheme darcula 

""" customizations """
set path=$PWD/**
set autochdir
set ttyfast
set visualbell
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set regexpengine=1
set encoding=utf-8
filetype plugin indent on
set ignorecase
set statusline=2
set spell spelllang=en_us
set backspace=indent,eol,start
let mapleader = ","

" status line
set statusline =%0*\%f              " file path 
set statusline+=\ \ %r%w%m\ \       " modified, ro
set statusline+=\%=%p%%\ %L\ \        " line no. and pct

"persistent splits
command Bd b#|bd #

autocmd InsertLeave <buffer> write
" save automatically when text is changed
set updatetime=200
au CursorHold * update

""" keybinds """


"clear search highlights
nnoremap <esc><esc> :noh<return>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"cycle line numberings
nnoremap <silent> <Leader>l :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>

"buffer cycling
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

"retain folds
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview

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
:set tags=~/.mytags

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
