set nocompatible
set number
set background=dark
set tabstop=4
set expandtab
set shiftwidth=4
set wildmenu
set smarttab
set cursorline
" set cursorcolumn
set hlsearch
syntax on
set clipboard=unnamedplus
set ttyfast
filetype plugin on

call plug#begin("~/.vim/plugged")
 Plug 'dracula/vim'
 Plug 'https://github.com/joshdick/onedark.vim.git'
call plug#end()

colorscheme onedark
