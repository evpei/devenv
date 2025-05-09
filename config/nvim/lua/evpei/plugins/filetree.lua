return {
    "nvim-tree/nvim-tree.lua", 
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
        -- disable netrw at the very start of your init.lua
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- set termguicolors to enable highlight groups
        vim.opt.termguicolors = true

        local function auto_update_path()
            local buf = vim.api.nvim_get_current_buf()
            local bufname = vim.api.nvim_buf_get_name(buf)
            if vim.fn.isdirectory(bufname) or vim.fn.isfile(bufname) then
                require("nvim-tree.api").tree.find_file(vim.fn.expand("%:p"))
            end
        end

        vim.api.nvim_create_autocmd("BufEnter", { callback = auto_update_path })

        -- OR setup with some options
        require("nvim-tree").setup({
            sort_by = "case_sensitive",
            view = {
                width = 30,
            },
            renderer = {
                group_empty = false,
            },
            filters = {
                dotfiles = false,
            },
            git = {
                ignore = false,
            }
        })
    end
}
