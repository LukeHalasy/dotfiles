local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "/Users/lukehalasy/.config/nvim",
        hidden = true,
    })
end

return M
