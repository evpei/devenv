local nnoremap = require("evpei.utils.remap").nnoremap
local disable_dropdown = "require('telescope.themes').get_dropdown({ previewer = false})"

nnoremap("<leader>pv", "<cmd>Ex<CR>")
nnoremap(
    "<leader>pp",
    "<cmd>lua require('telescope.builtin').find_files({"
    .. disable_dropdown
    .. ", find_command = {'rg', '--files', '--hidden', '-g', '!.git'}})<cr>"
)

nnoremap("<leader>pf", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>pb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>pg", "<cmd>lua require('telescope.builtin').git_branches(" .. disable_dropdown .. ")<cr>")
nnoremap("<leader>ps", "<cmd>lua require('telescope.builtin').git_status()<cr>")

nnoremap("<leader>gd", "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>")
nnoremap("<leader>gi", "<cmd>lua require('telescope.builtin').lsp_implementations()<cr>")
nnoremap("<leader>aa", "gg=G<CR>")
nnoremap("<c-d>", "<c-d>zz")
nnoremap("<c-u>", "<c-u>zz")

nnoremap("<leader>j", "<c-w><c-j>")
nnoremap("<leader>h", "<c-w><c-h>")
nnoremap("<leader>l", "<c-w><c-l>")
nnoremap("<leader>k", "<c-w><c-k>")

nnoremap('<leader>"', "<cmd>split<CR>")
nnoremap("<leader>-", "<cmd>vsplit<CR>")

nnoremap("<leader>cp", '"+p')
nnoremap("<leader>CP", '"+P')
nnoremap("<leader>cy", '"+y')

-- DIAGNOSTICS
nnoremap("<leader>aa", "<cmd>TroubleToggle document_diagnostics<cr>")

-- FORMATTING
-- nnoremap("<leader>ff", "<cmd>lua vim.lsp.buf.format { async = true }<cr>")
nnoremap("<leader>ff", "<cmd>lua require('conform').format({async = true, lsp_fallback = true})<cr>")
-- FUGITIVE ()
nnoremap("<leader>gg", "<cmd>:Gedit :<cr>")
nnoremap("<leader>gm", "<cmd>G mergetool<cr>")
nnoremap("<leader>gs", "<cmd>Gvdiffsplit<cr>")
nnoremap("<leader>go", "<cmd>Gvdiffsplit origin/master<cr>")
nnoremap("<leader>gb", "<cmd>GBrowse<cr>")
nnoremap("<leader>gp", "<cmd>G push origin<cr>")
--
-- FileTree
nnoremap("<leader>tt", "<cmd>NvimTreeToggle<cr>")
nnoremap("<leader>pv", "<cmd>NvimTreeFindFile<cr>")

-- Quickfix list
nnoremap("<leader>qq", "<cmd>lua require('telescope.builtin').quickfix()<cr>")
nnoremap("<leader>qn", "<cmd>cnext<cr>")
nnoremap("<leader>qp", "<cmd>cprevious<cr>")

nnoremap("<leader>r", "<cmd>lua vim.lsp.buf.rename()<cr>")

nnoremap("<leader>np", "<cmd>:e %:h/Class.php<cr>")
nnoremap("<leader>nv", "<cmd>:e %:h/Component.vue<cr>")
nnoremap("<leader>nm", "<cmd>:e %:h/Notes.md<cr>")
nnoremap("<leader>nj", "<cmd>:e %:h/File.js<cr>")
nnoremap("<leader>nj", "<cmd>:e %:h/File.js<cr>")

nnoremap("<leader>uu", "<cmd>UndotreeToggle<cr>")
