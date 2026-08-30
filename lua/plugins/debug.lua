local diagnostic_signs = {
	Error = "✘",
	Warn = "▲",
	Hint = "⚑",
	Info = "»",
}

if vim.diagnostic.config then
	vim.diagnostic.config({
		signs = {
			text = {
				[vim.diagnostic.severity.ERROR] = diagnostic_signs.Error,
				[vim.diagnostic.severity.WARN]  = diagnostic_signs.Warn,
				[vim.diagnostic.severity.HINT]  = diagnostic_signs.Hint,
				[vim.diagnostic.severity.INFO]  = diagnostic_signs.Info,
			},
		},
		virtual_text = true,
		underline = true,
		update_in_insert = false,
	})
else
	for type, icon in pairs(diagnostic_signs) do
		local hl = "DiagnosticSign" .. type
		vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
	end
end
