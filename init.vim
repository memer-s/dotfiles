set nocompatible
set number
set background=dark
set tabstop=3
set expandtab
set shiftwidth=3
set wildmenu
set smarttab
set cursorline
" set cursorcolumn
set hlsearch
syntax on
set clipboard=unnamedplus
set ttyfast
filetype plugin on

set number relativenumber

inoremap jk <ESC>

" nvim
set hidden
set nobackup
set nowritebackup

call plug#begin("~/.vim/plugged")
 Plug 'dracula/vim'
 Plug 'https://github.com/joshdick/onedark.vim.git'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'scrooloose/nerdtree'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'rust-lang/rust.vim'
 Plug 'scrooloose/nerdcommenter'
 Plug 'posva/vim-vue'
call plug#end()

" coc-nvim, 
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>

let g:airline#extensions#tabline#enabled = 1


colorscheme onedark
