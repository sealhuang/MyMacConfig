execute pathogen#infect()
syntax on
filetype plugin indent on

set ruler
set cursorline
set hlsearch
set showcmd
"set number

autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType python setlocal foldmethod=indent
"set foldlevel=2

nnoremap <silent> <Leader>[ :set nonumber!<CR>:set foldcolumn=0<CR>

" pydiction config
filetype plugin on
let g:pydiction_location = '/Users/sealhuang/.vim/bundle/pydiction/complete-dict'
let g:pydiction_menu_height = 4

" nerd tree config
"let g:NERDTreeWinSize = 20
nnoremap <silent> <Leader>] :exe 'NERDTreeToggle'<CR>
set mouse=nv

syntax enable
" Solarized stuff
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

