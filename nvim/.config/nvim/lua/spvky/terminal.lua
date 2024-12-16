vim.api.nvim_create_autocmd('TermOpen', {
	-- When opening a terminal, disable line numbers
	callback = function ()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

-- Remap exit terminal mode to be less annoying
vim.keymap.set('t', '<Esc>', "<C-\\><C-n>", {silent = true})

local job_id = 0
-- Opens a 10 row high terminal
vim.keymap.set('n', '<leader>st', function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd('J')
	vim.api.nvim_win_set_height(0,10)
	job_id = vim.bo.channel
end)
