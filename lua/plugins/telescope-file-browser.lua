return {
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require("telescope").load_extention("file_browser")
    end,
    keys = {
      {
        "<leader>sA",
        ":Telescope file_browser<cr>",
        desc = "Browser Files",
      },
    },
  },
}
