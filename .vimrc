"theme
colorscheme gruvbox

"custom
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set number

"lang server
if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif
