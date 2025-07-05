return {
  "jay-babu/mason-null-ls.nvim",
  dependencies = { "williamboman/mason.nvim", "nvimtools/none-ls.nvim" },
  config = function()
    local null_ls = require("null-ls")
    require("mason-null-ls").setup({ automatic_setup = true })
    null_ls.setup()
  end,
}


