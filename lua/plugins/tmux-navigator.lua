return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<c-j>", "<cmd>TmuxNavigateDown<CR>", desc = "Navigate Down" },
    { "<c-k>", "<cmd>TmuxNavigateUp<CR>", desc = "Navigate Up" },
    { "<c-h>", "<cmd>TmuxNavigateLeft<CR>", desc = "Navigate Left" },
    { "<c-l>", "<cmd>TmuxNavigateRight<CR>", desc = "Navigate Right" },
    { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>", desc = "Navigate Previous" },
  },
}
