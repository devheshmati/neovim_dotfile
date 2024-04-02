vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")
	-- general
	use("nvim-lua/plenary.nvim")

	-- icon, need nerd font to download
	use("nvim-tree/nvim-web-devicons")

	-- telescope
	use({ "nvim-telescope/telescope.nvim", tag = "0.1.4" })
	use("numToStr/Comment.nvim")
	use("folke/tokyonight.nvim")
	use("nvim-tree/nvim-tree.lua")

	-- suround plugin for better experience
	use("kylechui/nvim-surround")

	-- lsp
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim")

	-- cmp for autocompletion
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("onsails/lspkind.nvim")

	-- lua snip
	use("L3MON4D3/LuaSnip")

	-- tereminal foaterm
	use("voldikss/vim-floaterm")

	-- tmux navigator
	use("christoomey/vim-tmux-navigator")

	-- prettier
	use("MunifTanjim/prettier.nvim")

	-- lua line status bar
	use("nvim-lualine/lualine.nvim")
end)
