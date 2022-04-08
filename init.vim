call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'saadparwaiz1/cmp_luasnip'

call plug#end()

set completeopt=menu,menuone,noselect
set nocompatible
set showmatch
set ignorecase
set mouse=v
set incsearch
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set relativenumber
" set cc=80
filetype plugin indent on
set ttyfast

lua <<EOF
print('hello from lua')
EOF

lua require('basic')
