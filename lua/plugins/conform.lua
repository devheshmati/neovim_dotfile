return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = {
      require("conform").setup({
        formatters_by_ft = {
          blade = { "blade-formatter" },
          -- php = { "phpcbf" },
          lua = { "stylua" },
          javascript = { "prettierd" },
          typescript = { "prettierd" },
          json = { "fixjson" },
          html = { "prettierd" },
          css = { "prettierd" },
          python = { "black" },
          vue = { "prettierd" },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      }),
    },
  },

  vim.filetype.add({
    pattern = {
      [".*%.blade%.php"] = "blade",
    },
  }),
}
