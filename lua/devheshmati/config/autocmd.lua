return {
  -- this is for blade
	vim.api.nvim_create_autocmd("FileType", {
		pattern = "blade",
		callback = function()
			vim.cmd([[
      set syntax=html
      runtime! syntax/php.vim
      syn region bladeEcho matchgroup=bladeEchoDelim start=+{{+ end=+}}+ contains=@phpClTop
    ]])
		end,
	}),

  vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = "*.blade.php",
  command = "set filetype=blade"
})
}
