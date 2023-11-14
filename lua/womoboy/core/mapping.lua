vim.g.mapleader = " "

local keymap = vim.keymap

-- explorer
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- nerd
-- keymap.set("n", "<leader>e", ":Lex<cr>:vertical resize 30<cr>") -- open build-in nerd tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>") -- open build-in nerd tree

-- increse and decrease
keymap.set("n", "<leader>9", "<C-x>")
keymap.set("n", "<leader>0", "<C-a>")

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

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
keymap.set("n", "<leader>to", ":FloatermToggle<CR>")

-- maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<cr>")

-- general
keymap.set("n", "<leader>nh", ":nohl<cr>")
keymap.set("n", "x", '"_x')
keymap.set("n", "<C-a>", "G<S-v>gg")

-- terminal
keymap.set("n", "<leader>to", ":FloatermToggle<cr>")

-- formatting
keymap.set("n", "<leader>fo", vim.lsp.buf.format)
