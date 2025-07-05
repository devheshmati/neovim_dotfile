return {
  "williamboman/mason.nvim",
  dependencies = { 'mason-org/mason-registry' },
  config = function()
    require("mason").setup()
  end,
}
