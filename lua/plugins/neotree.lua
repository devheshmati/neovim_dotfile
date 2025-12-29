return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_gitignored = false, -- نمایش فایل‌های داخل gitignore
          hide_dotfiles = false, -- نمایش فایل‌های مخفی (مثل .env)
          hide_by_name = {
            -- ".git", (اگر می‌خواهید پوشه .git همچنان مخفی بماند این را نگه دارید)
          },
        },
      },
    },
  },
}
