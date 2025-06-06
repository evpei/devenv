local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")
local utils = require("telescope.utils")


-- our picker function: colors
local filetypes = function(opts)
	opts = opts or {}
	pickers
		.new(opts, {
			prompt_title = "Filetype",
			finder = finders.new_table({
				results = {
					{ "PHP Class", vim.fn.expand("%:h/") .. "/Class.php" },
					{ "Vue", "Component.vue" },
				},
				entry_maker = function(entry)
					return {
						value = entry[2],
						display = entry[1],
						ordinal = entry[1],
					}
				end,
			}),
			sorter = conf.generic_sorter(opts),
			-- attach_mappings = function(prompt_bufnr, map)
			-- 	actions.select_default:replace(function()
			-- 		actions.close(prompt_bufnr)
			-- 		local selection = action_state.get_selected_entry()
			-- 		vim.api.nvim_put({ selection[1] }, "", false, true)
			-- 	end)
			-- 	return true
			-- end,
		})
		:find()
end

-- to execute the function
filetypes(require("telescope.themes").get_dropdown({}))
