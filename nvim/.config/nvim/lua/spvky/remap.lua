-- This all serves to provide simpler syntax for keymaps
function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, {noremap = true, silent = true})
end

function nmap(shortcut, command)
	map('n',shortcut, command)
end

function imap(shortcut, command)
	map('i',shortcut, command)
end

-- Set the leader key to Space
vim.g.mapleader = ' '

-- File explorer
nmap("-","<cmd>Oil<cr>")
-- Navigate panes
nmap("<leader>k","<C-w>k")
nmap("<leader>h","<C-w>h")
nmap("<leader>l","<C-w>l")
nmap("<leader>j","<C-w>j")
-- Rotate panes
nmap("<leader>r","<C-w>r")
nmap("<leader>R","<C-w>R")
-- Navigate Quickfix
nmap("<C-j>","<cmd>cnext<CR>")
nmap("<C-k>","<cmd>cprev<CR>")
