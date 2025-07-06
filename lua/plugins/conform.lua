return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    config = function()
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
