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
	use("nvim-telescope/telescope-file-browser.nvim")
	use("numToStr/Comment.nvim")
	use("nvim-tree/nvim-tree.lua")

	-- suround plugin for better experience
	use("kylechui/nvim-surround")

	-- lsp
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("nvimtools/none-ls.nvim")
	use("jay-babu/mason-null-ls.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("nvimdev/lspsaga.nvim")

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

	-- theme
	use("folke/tokyonight.nvim")

	-- prettier
	use("MunifTanjim/prettier.nvim")

	-- treesitter
	use("nvim-treesitter/nvim-treesitter")

	-- lua line status bar
	use("nvim-lualine/lualine.nvim")
end)
