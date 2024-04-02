-- local null_ls = require("null-ls")
--
-- null_ls.setup({
-- 	sources = {
-- 		null_ls.builtins.formatting.stylua,
-- 		null_ls.builtins.formatting.prettier,
-- 		null_ls.builtins.diagnostics.php,
-- 		null_ls.builtins.diagnostics.markuplint,
-- 		null_ls.builtins.code_actions.eslint,
-- 	},
-- })
local null_ls = require("null-ls")
null_ls.setup()

require("mason-null-ls").setup({
	ensure_installed = { "stylua", "jq", "prettier", "php", "markuplint", "eslint" },
	handlers = {
		function() end, -- disables automatic setup of all null-ls sources
		stylua = function(source_name, methods)
			null_ls.register(null_ls.builtins.formatting.stylua)
		end,
		shfmt = function(source_name, methods)
			-- custom logic
			require("mason-null-ls").default_setup(source_name, methods) -- to maintain default behavior
		end,
	},
})
