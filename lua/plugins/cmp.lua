local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body) -- تغییر به LuaSnip
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	formatting = {
		format = lspkind.cmp_format({
			mode = "symbol_text", -- نمایش آیکون + متن
			maxwidth = 50,
			ellipsis_char = "...",
			show_labelDetails = true,
		}),
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" }, -- تغییر به luasnip
	}, {
		{ name = "buffer" },
		{ name = "path" },
	}),
})

cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = { { name = "buffer" } },
})

cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({ { name = "path" } }, { { name = "cmdline" } }),
	matching = { disallow_symbol_nonprefix_matching = false },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- old method

-- local lspconfig = require("lspconfig")
-- lspconfig.ts_ls.setup({
-- 	capabilities = capabilities,
-- 	settings = {
-- 		typescript = {
-- 			inlayHints = {
-- 				includeInlayVariableTypeHints = true,
-- 				includeInlayFunctionParameterTypeHints = true,
-- 			},
-- 		},
-- 		javascript = {
-- 			inlayHints = {
-- 				includeInlayVariableTypeHints = true,
-- 				includeInlayFunctionParameterTypeHints = true,
-- 			},
-- 		},
-- 	},
-- })
--
-- lspconfig.lua_ls.setup({
-- 	capabilities = capabilities,
-- })

-- local vue_plugin = {
-- 	name = "@vue/typescript-plugin",
-- 	location = vue_language_server_path,
-- 	languages = { "vue" },
-- 	configNamespace = "typescript",
-- }

-- new method
vim.lsp.config("ts_ls", {
	capabilities = capabilities,
	filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" },
	settings = {
		typescript = {
			inlayHints = {
				includeInlayVariableTypeHints = true,
				includeInlayFunctionParameterTypeHints = true,
			},
		},
		javascript = {
			inlayHints = {
				includeInlayVariableTypeHints = true,
				includeInlayFunctionParameterTypeHints = true,
			},
		},
	},
})

vim.lsp.config("lua_ls", {
	capabilities = capabilities,
})

vim.lsp.config("pyright", {
	capabilities = capabilities,
})

vim.lsp.config("djls", {
	capabilities = capabilities,
})

-- Vue language server (Volar)
vim.lsp.config("vue_ls", {
	capabilities = capabilities,
	filetypes = { "vue" },
	init_options = {
		vue = {
			hybridMode = false, -- set true if you also want ts_ls to handle the <script> block
		},
	},
})

vim.lsp.config("vtsls", {
	capabilities = capabilities,
	filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
})

-- Emmet for HTML/JSX/Vue template shortcuts
vim.lsp.config("emmet_language_server", {
	capabilities = capabilities,
	filetypes = {
		"html",
		"css",
		"scss",
		"javascriptreact",
		"typescriptreact",
		"vue",
		"svelte",
	},
})

-- HTML
vim.lsp.config("html", {
	capabilities = capabilities,
	filetypes = { "html", "vue" },
})

-- CSS
vim.lsp.config("cssls", {
	capabilities = capabilities,
	filetypes = { "css", "scss", "less", "vue" },
})

-- Tailwind (only if you use it in Nuxt)
vim.lsp.config("tailwindcss", {
	capabilities = capabilities,
	filetypes = {
		"html",
		"css",
		"scss",
		"javascript",
		"javascriptreact",
		"typescript",
		"typescriptreact",
		"vue",
		"svelte",
	},
})

vim.lsp.enable("emmet_language_server")
vim.lsp.enable("html")
vim.lsp.enable("cssls")
vim.lsp.enable("tailwindcss") -- remove if not using Tailwind
vim.lsp.enable("ts_ls")
vim.lsp.enable("vue_ls")
vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("djls")
