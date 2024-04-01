vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')

  -- general
  use('nvim-lua/plenary.nvim')

  -- telescope
  use ({'nvim-telescope/telescope.nvim', tag = '0.1.4' })

end)
