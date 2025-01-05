-- Terminal commands all start with <leader>t
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
	short_terminal_id = vim.bo.channel
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

-- Opens a vertical terminal and runs bacon in it
vim.keymap.set('n', '<leader>tv', function()
	vim.cmd.new()
	vim.cmd.term()
	vim.cmd.wincmd('L')
	vim.api.nvim_win_set_width(0,50)
	vertical_terminal_id = vim.bo.channel
end)

-- do 'bacon run' in a vertical terminal
vim.keymap.set('n', '<leader>tr', function()
	vim.cmd.new()
	vim.cmd.term()
	vim.cmd.wincmd('L')
	vim.api.nvim_win_set_width(0,50)
	vertical_terminal_id = vim.bo.channel
	vim.cmd.wincmd('h')
	vim.fn.chansend(vertical_terminal_id, {"bacon run\r"})
end)

-- do 'bacon run' in a horizontal terminal
vim.keymap.set('n', '<leader>tR', function()
	vim.cmd.new()
	vim.cmd.term()
	vim.cmd.wincmd('J')
	vim.api.nvim_win_set_height(0,10)
	vertical_terminal_id = vim.bo.channel
	vim.cmd.wincmd('k')
	vim.fn.chansend(vertical_terminal_id, {"bacon run\r"})
end)
