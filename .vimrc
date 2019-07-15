"""theme
colorscheme ambient

"""customizations
set path+=**
set nocompatible
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set number
set autowrite
set laststatus=2
set clipboard=unnamed
set encoding=utf-8
filetype off

au InsertEnter * set norelativenumber 
au InsertLeave * set relativenumber

"autosave
autocmd TextChanged,TextChangedI <buffer> write

"airline
let g:airline#extensions#tabline#fnamemod = ':t'
let g:bufferline_echo = 0

"""keybinds

"no delay entering normal mode
set timeoutlen=1000 ttimeoutlen=0

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

"list buffers after switching
nnoremap <A-n> :bnext<CR>:redraw<CR>:ls<CR>
nnoremap <A-p> :bprevious<CR>:redraw<CR>:ls<CR>

"""netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 15
augroup ProjectDrawer
   autocmd!
   autocmd VimEnter * :Vexplore
augroup END

"""lang config

"tags
:set tags=~/mytags

"python
au BufNewFile,BufRead *.py
    \ set tabstop=4	|
    \ set softtabstop=4	|
    \ set shiftwidth=4	|
    \ set textwidth=79	|
    \ set expandtab	|
    \ set autoindent	|
    \ set fileformat=unix
let python_highlight_all=1
syntax on
