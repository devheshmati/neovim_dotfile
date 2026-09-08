local cmp = require("cmp")
local luasnip = require("luasnip")
local lspkind = require("lspkind")

require("luasnip.loaders.from_vscode").lazy_load()
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

-- new method
vim.lsp.config("ts_ls", {
	capabilities = capabilities,
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

vim.lsp.enable("ts_ls")
vim.lsp.enable("lua_ls")
vim.lsp.enable("pyright")
vim.lsp.enable("djls")
