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

" mouse support
set mouse=a

call plug#begin("~/.vim/plugged")
 Plug 'dracula/vim'
 Plug 'https://github.com/joshdick/onedark.vim.git'
 Plug 'scrooloose/nerdtree'
 Plug 'scrooloose/nerdcommenter'
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 Plug 'rust-lang/rust.vim'
 Plug 'posva/vim-vue'
 Plug 'catppuccin/nvim', {'as': 'catppuccin'}
 Plug 'vim-scripts/vim-gitgutter'
 Plug 'nvim-lualine/lualine.nvim'
 Plug 'kyazdani42/nvim-web-devicons'
 Plug 'editorconfig/editorconfig-vim'
call plug#end()

filetype plugin on

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



lua << EOF
local catppuccin = require("catppuccin")
catppuccin.setup()

local function bruh() 
   return [[very swag]]
end

local function getTime()
   return os.date('%R')
end

require('lualine').setup {
   options = {
      icons_enabled = true,
      theme = 'auto'

   },
   sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch'},
      lualine_c = {'filename'},
      lualine_x = {bruh},
      lualine_y = {'location'},
      lualine_z = {getTime}
   }
}
EOF

colorscheme catppuccin
