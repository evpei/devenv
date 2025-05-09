return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local actions = require("telescope.actions")
		require("telescope").setup({
			pickers = {
				live_grep = {
					additional_args = function(opts)
						return {
							"--max-columns=1000",
							"--hidden",
						}
					end,
				},
			},
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = actions.move_selection_next,
						["<C-k>"] = actions.move_selection_previous,
						["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
						["<ESC>"] = actions.close,
					},
				},
				preview = {
					filesize_limit = 0.9999,
					timeout = 250,
				},
			},
		})
	end,
}
