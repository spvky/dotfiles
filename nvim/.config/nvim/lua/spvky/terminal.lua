vim.api.nvim_create_autocmd('TermOpen', {
	-- When opening a terminal, disable line numbers
	callback = function ()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

-- Remap exit terminal mode to be less annoying
vim.keymap.set('t', '<Esc>', "<C-\\><C-n>", {silent = true})

local short_terminal_id = 0
-- Opens a 10 row high terminal
vim.keymap.set('n', '<leader>th', function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd('J')
	vim.api.nvim_win_set_height(0,10)
	job_id = vim.bo.channel
end)

local vertical_terminal_id = 1
-- Opens a 50 row wide terminal
vim.keymap.set('n', '<leader>tv', function()
	vim.cmd.new()
	vim.cmd.term()
	vim.cmd.wincmd('L')
	vim.api.nvim_win_set_width(0,50)
	vertical_terminal_id = vim.bo.channel
end)
