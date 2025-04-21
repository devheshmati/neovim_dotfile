return {
    {
      "mattn/emmet-vim",
      event = "VeryLazy",
      init = function()
        -- Enable Emmet for blade files
        vim.g.user_emmet_settings = {
          blade = {
            extends = "html",
          },
        }
        -- Enable Emmet in different modes
        vim.g.user_emmet_mode = "a" -- enable all functions in all modes
        -- Enable just for html/css/blade files
        vim.g.user_emmet_install_global = 0
        vim.api.nvim_create_autocmd("FileType", {
          pattern = { "html", "css", "blade", "php" },
          command = "EmmetInstall",
        })
      end,
    },
  }