require("spvky")
require('onedark').load()
vim.opt.termguicolors = true
-- require("bufferline").setup{}
vim.opt.rnu = true
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smarttab = true
vim.opt.softtabstop = 2
vim.opt.hidden = true
vim.opt.list = true
-- Case insensitive searching
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.g.rustfmt_autosave = 1
vim.g.netrw_winsize = 30
vim.keymap.set('n', '<C-w>', ':Lex<CR>')
