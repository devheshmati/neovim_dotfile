-- lua
vim.lsp.config('lua_ls', {
	root_dir = function(bufnr, on_dir)
		if not vim.fn.bufname(bufnr):match('%.txt$') then
			on_dir(vim.fn.getcwd())
		end
	end,
	settings = {}
})

vim.lsp.enable('lua_ls')

-- end lua

-- old version

-- local lspconfig = require("lspconfig")
--
-- -- lua
-- lspconfig.lua_ls.setup({
--   settings = {
--     Lua = {
--       diagnostics = {
--         globals = { "vim" }
--       }
--     }
--   }
-- })
