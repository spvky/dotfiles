vim.api.nvim_create_autocmd('TermOpen', {
	callback = function ()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

vim.keymap.set('t', '<C-n>', "<C-\\><C-n>", {silent = true})

local job_id = 0
vim.keymap.set('n', '<leader>st', function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd('J')
	vim.api.nvim_win_set_height(0,10)
	job_id = vim.bo.channel
end)
