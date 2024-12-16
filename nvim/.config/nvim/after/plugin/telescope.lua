local builtin = require('telescope.builtin')
-- Fuzzyfind
vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
-- Git Fuzzyfind
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
-- Live Grep (requires `ripgrep` in the path)
vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Telescope live grep' })
-- Buffer explorer
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffer explorer'})


local telescope = require('telescope')
telescope.setup {
	pickers = {
		buffers = {
			sort_mru = true,
			sort_lastused = true,
			initial_mode = 'normal'
		},
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

