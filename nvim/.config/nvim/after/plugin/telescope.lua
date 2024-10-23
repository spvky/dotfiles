local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Telescope live grep' })

local telescope = require('telescope')
telescope.setup {
	pickers = {
		find_files = {
			hidden = true,
			file_ignore_patterns = {"^.git/", "^node_modules/"},
			path_display = { 'smart' },
		};
	},
	defaults = {
		mappings = {
			n = {
				["d"] = require("telescope.actions").delete_buffer,
				["q"] = require("telescope.actions").close,
			},
		},
	},
}

