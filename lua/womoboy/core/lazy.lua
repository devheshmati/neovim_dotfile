local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	"nvim-lua/plenary.nvim",
	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	},
	"nvim-telescope/telescope.nvim",
  'nvim-telescope/telescope-live-grep-args.nvim',
	"windwp/nvim-autopairs",
	-- "windwp/nvim-ts-autotag",
	"nvim-treesitter/nvim-treesitter",
	"numToStr/Comment.nvim",
	"christoomey/vim-tmux-navigator",
	"szw/vim-maximizer",
	"tpope/vim-surround",
	"inkarkat/vim-ReplaceWithRegister",
	"kyazdani42/nvim-web-devicons",
	"nvim-lualine/lualine.nvim",

  -- file explorer
  "nvim-tree/nvim-tree.lua",

	-- color scheme
	-- "folke/tokyonight.nvim",
	"rebelot/kanagawa.nvim",

	-- autocompletion
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",

	-- snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",

	-- mason
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",

	-- lsp
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"nvimdev/lspsaga.nvim",
	"jose-elias-alvarez/typescript.nvim",
	"onsails/lspkind.nvim",

	-- linting & formatting
	"jose-elias-alvarez/null-ls.nvim",
	"jay-babu/mason-null-ls.nvim",

	-- git
	"lewis6991/gitsigns.nvim",

	-- console
	"voldikss/vim-floaterm",

	"lukas-reineke/indent-blankline.nvim",
	"norcalli/nvim-colorizer.lua",
	"justinmk/vim-sneak",
}

require("lazy").setup(plugins, opts)
