return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = "IndianBoy42/tree-sitter-just",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = "all",
			sync_install = false,
			auto_install = true,
			ignore_install = { "" },
			highlight = {
				enable = true,
				disable = { "" },
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true, disable = { "" } },
			autotag = {
				enable = true,
			},
		})
	end,
}
