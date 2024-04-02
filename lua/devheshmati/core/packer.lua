vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')
-- general
  use('nvim-lua/plenary.nvim')

  -- icon, need nerd font to download
  use('nvim-tree/nvim-web-devicons')

  -- telescope
  use({ 'nvim-telescope/telescope.nvim', tag = '0.1.4' })
  use('numToStr/Comment.nvim')
  use("folke/tokyonight.nvim")
  use("nvim-tree/nvim-tree.lua")

  -- suround plugin for better experience
  use("kylechui/nvim-surround")

  -- lsp
  use("neovim/nvim-lspconfig")
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  use('jose-elias-alvarez/null-ls.nvim')

  -- tereminal foaterm
  use('voldikss/vim-floaterm')

  -- tmux navigator
  use('christoomey/vim-tmux-navigator')

  -- prettier
  use('MunifTanjim/prettier.nvim')
end)
