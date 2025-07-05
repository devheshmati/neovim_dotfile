-- lua/plugins/devicons.lua
return {
  "nvim-tree/nvim-web-devicons",
  config = function()
    require("nvim-web-devicons").setup({
      override = {
        zsh = {
          icon = "",
          color = "#428850",
          cterm_color = "65",
          name = "Zsh"
        }
      },
      color_icons = true,
      default = true,
      strict = true,
      variant = "dark", -- یا "light"
      override_by_filename = {
        [".gitignore"] = {
          icon = "",
          color = "#f1502f",
          name = "Gitignore"
        }
      },
      override_by_extension = {
        ["log"] = {
          icon = "",
          color = "#81e043",
          name = "Log"
        }
      },
      override_by_operating_system = {
        ["apple"] = {
          icon = "",
          color = "#A2AAAD",
          cterm_color = "248",
          name = "Apple",
        },
      },
    })
  end,
}

