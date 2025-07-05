local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  -- my plugins
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- lsp mason
  use 'neovim/nvim-lspconfig' -- lsp
  use 'williamboman/mason.nvim' -- mason

  -- null-ls
  use 'nvimtools/none-ls.nvim'

  -- snippets
  use '' -- luasnip
  use '' -- completion


  if packer_bootstrap then
    require('packer').sync()
  end
end)
