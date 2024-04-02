local lspconfig = require("lspconfig")

-- lua language
lspconfig.lua_ls.setup({})
lspconfig.intelephense.setup({})
lspconfig.pyright.setup({})
lspconfig.html.setup({})
lspconfig.tsserver.setup({
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
        languages = { "javascript", "typescript", "vue" },
      },
    },
  },
  filetypes = {
    "javascript",
    "typescript",
    "vue",
  },
})
lspconfig.eslint.setup({})
lspconfig.emmet_language_server.setup({})
