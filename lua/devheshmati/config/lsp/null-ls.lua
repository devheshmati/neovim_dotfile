local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.stylua,
		null_ls.builtins.formatting.prettier,
		null_ls.builtins.diagnostics.php,
		null_ls.builtins.diagnostics.markuplint,
		null_ls.builtins.code_actions.eslint,
	},
})
