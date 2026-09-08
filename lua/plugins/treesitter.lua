require("nvim-treesitter").setup({
 	ensure_installed = { "vue", "javascript", "typescript", "html", "css", "jsdoc", "comment", "php", "blade", "python" },
 	highlight = { enable = true },
 	indent = { enable = true },
})
