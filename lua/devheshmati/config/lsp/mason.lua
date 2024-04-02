require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright" },
})

require("mason-null-ls").setup({
  ensure_installed = { "stylua", "jq" },
})
