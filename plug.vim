if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

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

call plug#end()'
