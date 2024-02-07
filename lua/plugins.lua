return require('packer').startup(function(use)
  -- REQUIRED: Packer manages itself
  use 'wbthomason/packer.nvim'

  -- Kanagawa colorscheme
  use 'rebelot/kanagawa.nvim'

  -- Language server configurations
  use 'neovim/nvim-lspconfig'

  -- Treesitter, better syntax highlighting and indetation
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end
  }

  -- Telescope, a fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
