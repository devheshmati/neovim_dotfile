local fn = vim.fn
local use = require("packer").use

require("packer").startup(function()
  use("wbthomason/packer.nvim") -- Let packer manage itself

  -- Auto-load all plugin specs from lua/plugins/*.lua
  local plugin_dir = fn.stdpath("config") .. "/lua/plugins"
  local plugin_files = fn.readdir(plugin_dir)

  for _, file in ipairs(plugin_files) do
    if file:sub(-4) == ".lua" then
      local plugin_name = file:sub(1, -5) -- remove .lua
      local ok, plugin_spec = pcall(require, "plugins." .. plugin_name)
      if ok and plugin_spec then
        use(plugin_spec)
      else
        vim.notify(
          "⚠️ Failed to load plugin: plugins." .. plugin_name,
          vim.log.levels.WARN
        )
      end
    end
  end
end)

