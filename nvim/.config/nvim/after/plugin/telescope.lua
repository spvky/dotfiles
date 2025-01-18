local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>fa', builtin.find_files, {desc = 'Fuzzyfind all files in directory'})
vim.keymap.set('n', '<leader>ff', builtin.git_files, {desc = 'Fuzzyfind files known to git in the current repo'})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {desc = 'Fuzzyfind help tags'})
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
			path_display = { shorten = 4 },
		},
		git_files = {
			hidden = true,
			file_ignore_patterns = {"^.git/", "^node_modules/", "^assets/", "^art/", "^.gitignore", "^Cargo.lock"},
			path_display = { shorten =  4 },
		},
		live_grep = {
			hidden = true,
			file_ignore_patterns = {"^node_modules/"},
			path_display = { shorten = 4 },
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

