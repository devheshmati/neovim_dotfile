local k = vim.keycode
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")

-- telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- formatter
vim.keymap.set({ "n", "v" }, "<leader>cf", function()
	require("conform").format({
		lsp_format = "fallback",
		async = true,
		timeout_ms = 1500,
	})
end, { desc = "Format buffer (conform)" })
