return {
	"mfussenegger/nvim-lint",
	config = function()
		-- require("lint").linters_by_ft = {
		-- 	php = { "phpstan" },
		-- }
		-- local phpstan = require("lint").linters.phpstan
		-- phpstan.args = {
		-- 	"analyze",
		-- 	"-l",
		-- 	"7",
		-- 	"--error-format=json",
		-- 	"--no-progress",
		-- }
		-- local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
		--
		-- vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
		-- 	group = lint_augroup,
		-- 	callback = function()
		-- 		require("lint").try_lint()
		-- 	end,
		-- })
	end,

	-- vim.keymap.set("n", "<leader>ll", function()
	-- 	require("lint").try_lint()
	-- end),
}
