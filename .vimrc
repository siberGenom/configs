set nocompatible              " be iMproved, required
filetype plugin indent on    " required
inoremap jj <ESC>

" remap hjkl to jkl, including moving windows
noremap ; l
noremap l k
noremap k j
noremap j h
map h <NoP>

noremap <C-w>; <C-w>l
noremap <C-w>l <C-w>k
noremap <C-w>k <C-w>j
noremap <C-w>j <C-w>h

" deletion
noremap <C-d> daw

" join
noremap <C-j> kgJ
" manual plugins

" insert line without going to insert
nmap <CR> o<Esc>

filetype plugin indent on 
syntax on 
colorscheme zenburn
set encoding=utf-8
set number
set tabstop=4
set shiftwidth=4
set expandtab
inoremap <C-w> <C-o>dw
set visualbell
