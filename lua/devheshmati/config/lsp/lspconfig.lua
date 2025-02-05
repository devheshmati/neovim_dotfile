local lspconfig = require("lspconfig")

local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- lua language
lspconfig.lua_ls.setup({})
lspconfig.intelephense.setup({})
lspconfig.pyright.setup({})
lspconfig.html.setup({})
lspconfig.tailwindcss.setup({})
-- lspconfig.tsserver.setup({
-- 	init_options = {
-- 		plugins = {
-- 			{
-- 				name = "@vue/typescript-plugin",
-- 				location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
-- 				languages = { "javascript", "typescript", "vue" },
-- 			},
-- 		},
-- 	},
-- 	filetypes = {
-- 		"javascript",
-- 		"typescript",
-- 		"vue",
-- 	},
-- })
lspconfig.eslint.setup({})
lspconfig.ts_ls.setup({})
lspconfig.emmet_language_server.setup({})
