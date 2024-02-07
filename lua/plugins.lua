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
end)
