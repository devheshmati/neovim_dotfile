return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = function()
      require("conform").setup({
        formatters_by_ft = {
          blade = { "blade-formatter" },
          php = { "phpcbf" },
          lua = { "stylua" },
          javascript = { "prettierd" },
          typescript = { "prettierd" },
          json = { "prettierd" },
          html = { "prettierd" },
          css = { "prettierd" },
          python = { "ast_grep" },
        },
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      })
    end,
  },

  vim.filetype.add({
    pattern = {
      [".*%.blade%.php"] = "blade",
    },
  }),
}
