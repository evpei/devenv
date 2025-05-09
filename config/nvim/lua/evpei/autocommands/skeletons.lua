-- augroup skeleton
--     autocmd!
--     "adds bash shebang to .sh files
--     autocmd bufnewfile *.sh 0r ~/.config/nvim/templates skeleton.sh
-- augroup END

local skeleton = vim.api.nvim_create_augroup("skeleton", { clear = true })

-- local function addSkeleton(filetype)
-- 	vim.api.nvim_create_autocmd({ "BufNewFile" }, {
-- 		group = skeleton,
-- 		pattern = "*." .. filetype,
-- 		command = "0r ~/.config/nvim/skeletons/skeleton." .. filetype,
-- 	})
-- end
--
-- addSkeleton("php")
-- addSkeleton("vue")

vim.api.nvim_create_autocmd({ "BufNewFile" }, {
	group = skeleton,
	pattern = "*.php",
	command = "0r ~/.config/nvim/skeletons/skeleton.php",
})
