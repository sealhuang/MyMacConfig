if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/python_fold'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()


syntax on
filetype plugin indent on

set ruler
set cursorline
set hlsearch
set showcmd
set clipboard=unnamed
"set number

autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType python setlocal foldmethod=indent
"set foldlevel=2

nnoremap <silent> <Leader>[ :set nonumber!<CR>:set foldcolumn=0<CR>

" jedi-vim
let g:jedi#show_call_signatures = "1"
autocmd FileType python setlocal completeopt-=preview
"let g:jedi#completions_command = "<C-K>"
let g:jedi#popup_on_dot = 0

" supertab
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

" nerd tree config
"let g:NERDTreeWinSize = 20
nnoremap <silent> <Leader>] :exe 'NERDTreeToggle'<CR>
set mouse=nv

syntax enable
" Solarized stuff
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

