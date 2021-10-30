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
 Plug 'vim-airline/vim-airline'
 Plug 'scrooloose/nerdtree'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'rust-lang/rust.vim'
call plug#end()

inoremap <silent><expr> <c-space> coc#refresh()

colorscheme onedark
