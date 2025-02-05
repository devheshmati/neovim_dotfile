local opt = vim.opt

-- line number
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

-- split window
opt.splitright = true
opt.splitbelow = true

opt.signcolumn = "yes"

opt.iskeyword:append("-")

-- folding
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldenable = true

-- persian language
vim.opt.termbidi = true

-- permision
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- fix html syntax highlight in laravel blade
-- if vim.bo.filetype == "lua" then
--   -- vim.api.nvim_command('echo "file is blade"')
--   print('This is a lua file')
-- end

-- vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
--     callback = function()
--         if vim.bo.filetype == "lua" then
--             print("this is a lua file")
--         end
--     end
-- })

-- vim.api.nvim_create_autocmd("FileType", {
--     pattern = "lua",
--     callback = function()
--         print("this is a lua file")
--     end
-- })

vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    local ft = vim.bo.filetype
    if ft == 'blade' then
      vim.cmd('set ft=php')
    end
    -- vim.cmd("echo 'Filetype: ' .. vim.bo.filetype")
  end
})
