local utils = {}

local function bind(op, outer_opts)
    outer_opts = outer_opts or {noremap = true}
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

utils.nmap = bind("n", {noremap = false})
utils.nnoremap = bind("n")
utils.vnoremap = bind("v")
utils.xnoremap = bind("x")
utils.inoremap = bind("i")

return utils
