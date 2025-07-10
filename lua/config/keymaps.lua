-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

-- telescope live_grep
map("n", "<leader>fl", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep (explore inside files)" })
