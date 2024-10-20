function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, {noremap = true, silent = true})
end

function nmap(shortcut, command)
	map('n',shortcut, command)
end

function imap(shortcut, command)
	map('i',shortcut, command)
end

vim.g.mapleader = ' '
-- nmap("<C-h>",":bp<CR>")
-- nmap("<C-l>",":bn<CR>")
nmap("<leader>k","<C-w>k")
nmap("<leader>h","<C-w>h")
nmap("<leader>l","<C-w>l")
nmap("<leader>j","<C-w>j")
nmap("<S-h>","<cmd>Telescope buffers sort_mru=true sort_lastused=true initial_mode=normal<cr>")
