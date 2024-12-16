local builtin = require('telescope.builtin')
-- Fuzzyfind in the current repo
vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
-- Fuzzyfind in the current directory
vim.keymap.set('n', '<leader>fa', builtin.find_files, {})
-- Live Grep
vim.keymap.set('n', '<leader>fs', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', "<cmd>Telescope buffers sort_mru=true sort_lastused=true initial_mode=normal<cr>",{ desc = 'Telescope buffer explorer'})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {
-- 	sort_mru = true,
-- 	sort_lastused = true,
-- 	initial_mode= 'normal',
-- })


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

