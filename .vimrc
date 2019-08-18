""" theme """
set background=dark
colorscheme snow

""" customizations """
syntax on
set path+=**
set belloff=all
set ignorecase
set undodir=~/.vim/undo
set undofile
set updatetime=200
filetype plugin indent on
imap jj <Esc>

"persistent splits
command Bd b#|bd #

" autosave excluding terminal buffers
au CursorHold * if &buftype != 'terminal'| update | endif

"cycle line numberings
nnoremap <silent> <S-l> :exec &nu==&rnu? "se nu!" : "se rnu!"<CR>

""" dirvish """
autocmd FileType dirvish nnoremap <silent><buffer> gh :silent keeppatterns g@\v/\.[^\/]+/?$@d _<cr>:setl cole=3<cr>
