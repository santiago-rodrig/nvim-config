return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Language servers
  use { 'neovim/nvim-lspconfig' }

  -- Autocompletion
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      {
        'saadparwaiz1/cmp_luasnip',
        requires = { 'L3MON4D3/LuaSnip' }
      }
    }
  }
  use { 'hrsh7th/cmp-nvim-lsp', requires = { 'hrsh7th/nvim-cmp' } }
  use { 'hrsh7th/cmp-buffer', requires = { 'hrsh7th/nvim-cmp' } }
  use { 'hrsh7th/cmp-path', requires = { 'hrsh7th/nvim-cmp' } }
  use { 'hrsh7th/cmp-cmdline', requires = { 'hrsh7th/nvim-cmp' } }
  use { 'onsails/lspkind.nvim', requires = { 'hrsh7th/nvim-cmp' } }

  -- Commenting code
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  -- Syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end
  }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  -- Buffeline
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  -- Git signs
  use 'lewis6991/gitsigns.nvim'

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = {
      {'nvim-lua/plenary.nvim'},
    }
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', requires = { 'nvim-telescope/telescope.nvim' } }


  -- Colorschemes
  use 'Mofiqul/vscode.nvim'
  use 'sainnhe/sonokai'
end)
