"Options
set background=dark
set winblend=0
set wildoptions=pum
set pumblend=5
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set hidden
set inccommand=split
set cursorline
set mouse=a
set number
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set termguicolors
" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2"

filetype plugin indent on
syntax on

set t_Co=256

let mapleader="\<space>"

call plug#begin()

  Plug 'overcache/NeoSolarized'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  Plug 'cohama/lexima.vim'
  Plug 'nvim-treesitter/nvim-treesitter'
  
  if has("nvim")
    Plug 'neovim/nvim-lspconfig'
    Plug 'glepnir/lspsaga.nvim'
  endif

call plug#end()

colorscheme NeoSolarized
hi Normal guibg=NONE ctermbg=NONE

" Lspsaga
if !exists('g:loaded_lspsaga') | finish | endif

lua <<EOF
  local saga = require 'lspsaga'

  saga.init_lsp_saga {
    error_sign = '',
    warn_sign = '',
    hint_sign = '',
    infor_sign = '',
    border_Styles = "round",
  }
EOF

nnoremap <silent> <C-j> :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent>K :Lspsaga hover_doc<CR>
inoremap <silent> <C-k> :Lspsaga signature_help<CR>
nnoremap <silent> gh :Lspsaga lsp_finder<CR>

nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
