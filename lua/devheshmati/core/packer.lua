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
	use("saadparwaiz1/cmp_luasnip")
	use("onsails/lspkind.nvim")
	use("rafamadriz/friendly-snippets")

	-- lua snip
	use({
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!:).
		run = "make install_jsregexp",
	})

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

	-- bufferline
	use("akinsho/bufferline.nvim")

	-- color code show in terminal
	use("norcalli/nvim-colorizer.lua")

	-- auto close symbol when typing one of thom
	use("windwp/nvim-autopairs")

	-- highlight scope
	use("folke/twilight.nvim")

	-- indent line link for scope
	use("lukas-reineke/indent-blankline.nvim")
end)
