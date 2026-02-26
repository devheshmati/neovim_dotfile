require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort", "black", stop_after_first = true },
		rust = { "rustfmt", lsp_format = "fallback" },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		php = { "phpcbf", stop_after_first = true },
		blade = { "blade-formatter" },
		vue = { "prettierd", "prettier", stop_after_first = true },
	},
})
