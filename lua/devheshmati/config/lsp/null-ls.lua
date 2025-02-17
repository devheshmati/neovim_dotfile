local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		-- for lua
		null_ls.builtins.formatting.stylua,

		-- for html
		null_ls.builtins.diagnostics.markuplint,
		null_ls.builtins.formatting.prettierd,

		-- php
		null_ls.builtins.diagnostics.phpstan,
		null_ls.builtins.formatting.phpcsfixer,
		null_ls.builtins.formatting.blade_formatter,
	},
})
