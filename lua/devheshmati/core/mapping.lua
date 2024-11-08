vim.g.mapleader = " "
local keymap = vim.keymap

-- explorer
-- keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>pv", "<cmd>NvimTreeClose<cr><cmd>Telescope file_browser<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- highlight scope twilight
keymap.set("n", "<leader>tl", ":Twilight<cr>")

-- bufferline
keymap.set("n", "<leader>b1", "<cmd>BufferLineGoToBuffer 1<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>b2", "<cmd>BufferLineGoToBuffer 2<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>b3", "<cmd>BufferLineGoToBuffer 3<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>b4", "<cmd>BufferLineGoToBuffer 4<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>b5", "<cmd>BufferLineGoToBuffer 5<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>b6", "<cmd>BufferLineGoToBuffer 6<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>bc", "<cmd>BufferLinePickClose<cr>") -- find string in current working directory as you type

-- increse and decrease
keymap.set("n", "<leader>9", "<C-x>")
keymap.set("n", "<leader>0", "<C-a>")

-- tab navigate
keymap.set("n", "<leader>nt", vim.cmd.tabn)
keymap.set("n", "<leader>pt", vim.cmd.tabp)
keymap.set("n", "<leader>lt", vim.cmd.tabl)
keymap.set("n", "<leader>ct", ":tabnew<cr>")

-- line movement
keymap.set("n", "<A-k>", ":m .-2<CR>")
keymap.set("n", "<A-j>", ":m .+1<CR>")
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- float terminal
keymap.set("n", "<leader>to", ":FloatermToggle<cr>")

-- general
keymap.set("n", "<leader>nh", ":nohl<cr>")
keymap.set("n", "x", '"_x')
keymap.set("n", "<C-a>", "G<S-v>gg")

-- formatting
keymap.set("n", "<leader>fo", vim.lsp.buf.format)

-- sidebar file explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")
