-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.clipboard = "unnamedplus"

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.autoindent = true

-- this is for educational for custiomize tab indentation space for special file type, in this example for HTML
-- vim.api.nvim_create_autocmd("FileType", {
--   pattern = "html",
--   callback = function()
--     vim.opt_local.tabstop     = 2
--     vim.opt_local.shiftwidth  = 2
--     vim.opt_local.expandtab   = true
--   end,
-- })
