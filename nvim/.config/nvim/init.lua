require("spvky")
require('onedark').load()
require("oil").setup()
vim.opt.termguicolors = true
vim.opt.rnu = true
vim.opt.number = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.softtabstop = 2
vim.opt.hidden = true
vim.opt.list = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.g.rustfmt_autosave = 1
vim.g.netrw_winsize = 30

vim.api.nvim_create_autocmd('TextYankPost', {
callback = function()
	desc = 'Highlight when yanking text'
	vim.highlight.on_yank()
end,
})

