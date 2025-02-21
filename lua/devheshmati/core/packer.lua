vim.cmd([[packadd packer.nvim]])

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

-- local packer_bootstrap = ensure_packer()

require("packer").init({
	git = {
		clone_timeout = 300, -- Timeout in seconds
	},
})

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- requires base packages
	use("nvim-lua/plenary.nvim")
	use("nvim-tree/nvim-web-devicons")

	-- telescope
	use({ "nvim-telescope/telescope.nvim" })
	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
	})
	use({ "BurntSushi/ripgrep" })

	-- comment plugin
	use("numToStr/Comment.nvim")

	-- sidebar explorer
	use("nvim-tree/nvim-tree.lua")

	-- suround plugin for better experience
	use("kylechui/nvim-surround")

	-- lsp
	use("neovim/nvim-lspconfig")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- for formatter
	use("jose-elias-alvarez/null-ls.nvim")

	-- cmp for autocompletion

	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("saadparwaiz1/cmp_luasnip")
	use("onsails/lspkind.nvim")
	use("rafamadriz/friendly-snippets")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")

	-- tereminal foaterm
	use("voldikss/vim-floaterm")

	-- tmux navigator
	use("christoomey/vim-tmux-navigator")

	-- theme
	use("folke/tokyonight.nvim")

	-- treesitter
	use("nvim-treesitter/nvim-treesitter")
	use({
		"nvim-treesitter/nvim-treesitter-textobjects",
		after = "nvim-treesitter",
	})

	-- lua line status bar
	use("nvim-lualine/lualine.nvim")

	-- bufferline
	-- use("akinsho/bufferline.nvim")

	-- color code show in terminal
	use("norcalli/nvim-colorizer.lua")

	-- auto close symbol when typing one of thom
	use("windwp/nvim-autopairs")

	-- highlight scope
	use("folke/twilight.nvim")

	-- indent line link for scope
	use("lukas-reineke/indent-blankline.nvim")

	-- jump like jinja
	use("easymotion/vim-easymotion")

	-- emmet
	use("mattn/emmet-vim") -- Enhanced HTML expansion

	-- add AI dependencies
	-- use({ "stevearc/dressing.nvim" })
	-- use({ "MunifTanjim/nui.nvim" })
	-- use({ "echasnovski/mini.pick" })
	-- use({ "ibhagwan/fzf-lua" })
	-- use({ "zbirenbaum/copilot.lua" })
	-- use({ "HakonHarnes/img-clip.nvim" })
	-- use({ 'MeanderingProgrammer/render-markdown.nvim' })

	-- add AI tools
	-- use ({ 'codota/tabnine-nvim', run = "./dl_binaries.sh" })
end)
