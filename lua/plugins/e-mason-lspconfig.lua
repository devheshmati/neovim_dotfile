return {
  "williamboman/mason-lspconfig.nvim",
  after = "mason.nvim",  -- اینجا تضمین می‌کنه که بعد از mason لود بشه
  dependencies = {
    "williamboman/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")

    mason_lspconfig.setup({
      automatic_installation = true,
    })

     -- نصب پیش‌فرض بدون handlers
    local servers = mason_lspconfig.get_installed_servers()
    for _, server in ipairs(servers) do
      lspconfig[server].setup({})
    end
  end,
}

