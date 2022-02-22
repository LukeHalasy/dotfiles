if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

if has("nvim")
  Plug 'alexghergh/nvim-tmux-navigation'
  Plug 'nvim-lualine/lualine.nvim'

  Plug 'ARM9/arm-syntax-vim'
  Plug 'tjdevries/train.nvim'
  Plug 'mfussenegger/nvim-jdtls'

  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'

  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'shaunsingh/moonlight.nvim'
  Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
  Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }

  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'folke/todo-comments.nvim'
  Plug 'ggandor/lightspeed.nvim'

  Plug 'windwp/nvim-ts-autotag'

  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'
  
  Plug 'L3MON4D3/LuaSnip'
  Plug 'lambdalisue/fern.vim'

  Plug 'lukas-reineke/indent-blankline.nvim'

  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'nvim-treesitter/nvim-treesitter-textobjects'
  Plug 'nvim-treesitter/playground'
  Plug 'SmiteshP/nvim-gps'

  Plug 'onsails/lspkind-nvim'
  Plug 'kdheepak/tabline.nvim'
  Plug 'windwp/nvim-autopairs'

  Plug 'ap/vim-css-color'
  Plug 'cakebaker/scss-syntax.vim'
endif

call plug#end()
