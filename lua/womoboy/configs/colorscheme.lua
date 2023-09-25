local setup, cus_theme = pcall(require, "kanagawa")
if not setup then
	return
end

cus_theme.setup({
	-- style = "strom",
	transparent = true,
	terminal_colors = true,
})

-- vim.cmd([[colorscheme tokyonight]])
vim.cmd([[colorscheme kanagawa]])
