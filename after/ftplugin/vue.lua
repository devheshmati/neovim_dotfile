local function get_parent_tag()
    local cursor_row = vim.api.nvim_win_get_cursor(0)[1]
    local lines = vim.api.nvim_buf_get_lines(0, 0, cursor_row, false)
    local current_tag = nil

    for _, line in ipairs(lines) do
        -- Check for opening tags
        if line:find("<script[^>]*>") and not line:find("</script>") then
            current_tag = "script"
        elseif line:find("<template[^>]*>") and not line:find("</template>") then
            current_tag = "template"
        elseif line:find("<style[^>]*>") and not line:find("</style>") then
            current_tag = "style"
        end

        -- Check for closing tags
        if line:find("</script>") or line:find("</template>") or line:find("</style>") then
            current_tag = nil
        end
    end
    return current_tag
end

-- Function to update commentstring based on context
local function update_vue_commentstring()
    local tag = get_parent_tag()
    
    if tag == "script" then
        vim.bo.commentstring = "// %s"
    elseif tag == "template" then
        vim.bo.commentstring = "<!-- %s -->"
    elseif tag == "style" then
        vim.bo.commentstring = "/* %s */"
    else
        -- Default to HTML for template or unknown
        vim.bo.commentstring = ""
    end
end

-- Update commentstring automatically when cursor moves or buffer is entered
vim.api.nvim_create_autocmd({ "CursorHold", "CursorMoved", "BufEnter" }, {
    group = vim.api.nvim_create_augroup("VueContextComment", { clear = true }),
    buffer = 0,
    callback = update_vue_commentstring,
})
