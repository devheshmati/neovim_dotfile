return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- recommended
    build = ":TSUpdate",
    event = "VeryLazy", -- or "VeryLazy"
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
    },
    opts = {
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "python",
        "javascript",
        "typescript",
        "json",
        "yaml",
        "markdown",
        "markdown_inline",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false, -- ← important for Catppuccin
      },
      indent = { enable = true },
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = { ["]m"] = "@function.outer", ["]]"] = "@class.outer" },
          goto_next_end = { ["]M"] = "@function.outer", ["]["] = "@class.outer" },
          goto_previous_start = { ["[m"] = "@function.outer", ["[["] = "@class.outer" },
          goto_previous_end = { ["[M"] = "@function.outer", ["[]"] = "@class.outer" },
        },
      },
    },
  },
}
