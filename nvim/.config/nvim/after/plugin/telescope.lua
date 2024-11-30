local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.git_files, {})
vim.keymap.set('n', '<leader>a', builtin.find_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, { desc = 'Telescope live grep' })


local telescope = require('telescope')
telescope.setup {
	pickers = {
		find_files = {
			hidden = true,
			file_ignore_patterns = {"^node_modules/"},
			path_display = { 'smart' },
		},
		git_files = {
			hidden = true,
			file_ignore_patterns = {"^.git/", "^node_modules/", "^assets/", "^art/", "^.gitignore"},
			path_display = { 'smart' },
		},
		live_grep = {
			hidden = true,
			file_ignore_patterns = {"^node_modules/"},
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

