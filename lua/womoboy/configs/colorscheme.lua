local setup, tokyonight = pcall(require, 'tokyonight')
if not setup then
  return
end

tokyonight.setup({
  style = "storm",
  transparent = true,
  terminal_colors = true,
})

vim.cmd[[colorscheme tokyonight]]
