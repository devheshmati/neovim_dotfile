local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- lua language
lspconfig.lua_ls.setup({})

lspconfig.html.setup({
	filetypes = { "html", "php" }, -- Ensure PHP is included
	init_options = {
		embeddedLanguages = { css = true, javascript = true },
	},
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

lspconfig.cssls.setup({ capabilities = capabilities })

-- emmet for fast coding
lspconfig.emmet_ls.setup({
  capabilities = capabilities,
	filetypes = { "html", "php" },
	init_options = {
		extensions = { "html", "php" },
	},
})

-- javascript feautres
lspconfig.eslint.setup({
	--- ...
	on_attach = function(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			command = "EslintFixAll",
		})
	end,
})

lspconfig.ts_ls.setup({
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
				languages = { "javascript", "typescript", "vue" },
			},
		},
	},
	filetypes = {
		"javascript",
		"typescript",
		"vue",
	},
})

lspconfig.intelephense.setup({
	capabilities = capabilities,
	settings = {
		intelephense = {
			environment = { phpVersion = "8.3.0" },
			-- فعالسازی امکانات پیشرفته
			completion = {
				insertUseDeclaration = true, -- افزودن خودکار use statement
			},
			stubs = { -- اضافه کردن استابهای فریمورکها
				"laravel",
				"symfony",
				"wordpress",
			},
		},
	},
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "blade",
	callback = function()
		vim.lsp.start({ -- راهاندازی LSP برای Blade
			name = "intelephense",
			cmd = { "intelephense", "--stdio" },
			root_dir = vim.fn.getcwd(),
		})
	end,
})

configs.blade = {
	default_config = {
		-- Path to the executable: laravel-dev-generators
		-- cmd = { "laravel-dev-generators", "lsp" },
		filetypes = { "blade" },
		root_dir = function(fname)
			return lspconfig.util.find_git_ancestor(fname)
		end,
		settings = {},
	},
}
-- Set it up
lspconfig.blade.setup({
	capabilities = capabilities,
})
