local setup, nvim_tree = pcall(require, "nvim-tree")
if not setup then
	return
end

nvim_tree.setup({
	sort_by = "case_sensitive",
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})