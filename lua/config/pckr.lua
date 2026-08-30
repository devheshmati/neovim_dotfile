local function bootstrap_pckr()
	local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

	if not (vim.uv or vim.loop).fs_stat(pckr_path) then
		vim.fn.system({
			"git",
			"clone",
			"--filter=blob:none",
			"https://github.com/lewis6991/pckr.nvim",
			pckr_path,
		})
	end

	vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require("pckr").add({
	"nvim-tree/nvim-tree.lua",
	"nvim-tree/nvim-web-devicons",
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope-fzf-native.nvim",
	"nvim-telescope/telescope.nvim",
	"karb94/neoscroll.nvim",
	"stevearc/conform.nvim",
	"christoomey/vim-tmux-navigator",
	"nvim-treesitter/nvim-treesitter",
	"dmmulroy/tsc.nvim",
	"lewis6991/gitsigns.nvim",
	"romgrk/barbar.nvim",
	"https://codeberg.org/evergarden/nvim.git",
	"easymotion/vim-easymotion",

	-- lsp & mason
	"mason-org/mason.nvim",
	"mason-org/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	"zapling/mason-conform.nvim",

	-- auto-completion engine & source
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	{
		"L3MON4D3/LuaSnip",
		-- follow latest release.
		version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
		-- install jsregexp (optional!).
		build = "make install_jsregexp",
	},
	"hrsh7th/cmp-cmdline",
	"saadparwaiz1/cmp_luasnip",
	"hrsh7th/cmp-vsnip",
	"hrsh7th/vim-vsnip",
  "rafamadriz/friendly-snippets",
})
