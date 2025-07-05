return {
  "williamboman/mason.nvim",
  dependencies = {
    "WhoIsSethDaniel/mason-tool-installer.nvim", -- Optional, for managing other tools
  },
  config = function()
    require("mason").setup()
  end,
}
