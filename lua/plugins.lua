return require('packer').startup(function(use)
  -- REQUIRED: Packer manages itself
  use 'wbthomason/packer.nvim'

  -- Kanagawa colorscheme
  use 'rebelot/kanagawa.nvim'

  use 'neovim/nvim-lspconfig'
end)
