local null_ls = require("null-ls")

local sources = {
	-- lua
	-- null_ls.builtins.diagnostics.luacheck,
	null_ls.builtins.formatting.stylua,
}

null_ls.setup({
	sources = sources,
	debug = true,
})
