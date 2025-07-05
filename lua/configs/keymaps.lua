vim.g.mapleader = " " -- set leader key

-- Optional: map keybindings if you want
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>t", "<cmd>lua print('hello')<cr>", { desc = "print hello" })

-- 🔑 Keymap: <leader>e to toggle nvim-tree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle Side Explore" })

-- format
vim.keymap.set("n", "<leader>fo", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format Document" })

