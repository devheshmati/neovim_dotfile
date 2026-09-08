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

-- tab navigation
vim.keymap.set("n", "<S-h>", "<cmd>BufferPrevious<cr>")
vim.keymap.set("n", "<S-l>", "<cmd>BufferNext<cr>")
vim.keymap.set("n", "<A-h>", "<cmd>BufferMovePrevious<cr>")
vim.keymap.set("n", "<A-l>", "<cmd>BufferMoveNext<cr>")
vim.keymap.set("n", "<leader>bd", "<cmd>BufferClose<cr>")
vim.keymap.set("n", "<A-1>", "<cmd>BufferGoto 1<cr>")
vim.keymap.set("n", "<A-2>", "<cmd>BufferGoto 2<cr>")
vim.keymap.set("n", "<A-3>", "<cmd>BufferGoto 3<cr>")
vim.keymap.set("n", "<A-4>", "<cmd>BufferGoto 4<cr>")
vim.keymap.set("n", "<A-5>", "<cmd>BufferGoto 5<cr>")
vim.keymap.set("n", "<A-6>", "<cmd>BufferGoto 6<cr>")
vim.keymap.set("n", "<A-7>", "<cmd>BufferGoto 7<cr>")
vim.keymap.set("n", "<A-8>", "<cmd>BufferGoto 8<cr>")
vim.keymap.set("n", "<A-9>", "<cmd>BufferGoto 9<cr>")
vim.keymap.set("n", "<A-1>", "<cmd>BufferLast<CR>")

-- easy motion
-- Turn on case-insensitive feature (smartcase)
vim.g.EasyMotion_smartcase = 1

-- 2-character search and jump (s{char}{char}{label})
-- This matches your second example, which is usually the most comfortable!
vim.keymap.set("n", "s", "<Plug>(easymotion-overwin-f2)", { remap = true, desc = "EasyMotion 2-char jump" })

-- Alternative: 1-character search and jump (uncomment if you prefer it over f2)
-- vim.keymap.set('n', 's', '<Plug>(easymotion-overwin-f)', { remap = true, desc = 'EasyMotion 1-char jump' })

-- JK motions: Line motions
vim.keymap.set({ "n", "v", "o" }, "<Leader>j", "<Plug>(easymotion-j)", { remap = true, desc = "EasyMotion line down" })
vim.keymap.set({ "n", "v", "o" }, "<Leader>k", "<Plug>(easymotion-k)", { remap = true, desc = "EasyMotion line up" })

-- rename
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })
