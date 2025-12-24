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

function vmap(shortcut, command)
	map('v',shortcut, command)
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
nmap("<leader>qo", "<cmd>cope<CR>")
nmap("<leader>qq", "<cmd>ccl<CR>")
nmap("<leader>qp", "<cmd>colder<CR>")
nmap("<leader>qn", "<cmd>cnewer<CR>")
nmap("<leader>ql", "<cmd>chistory<CR>")
-- Search Highlighting
nmap("<leader>n", "<cmd>noh<CR>")

-- Shortcuts for the blackhole register
nmap("_","\"_")
vmap("_","\"_")

-- Shortcut to jump to last buffer
nmap("<leader>bl","<C-^>")

-- Notes hotkeys
nmap("<leader>nf", ":Telekasten find_notes<cr>");
nmap("<leader>nn", ":Telekasten new_note<cr>");

-- Fold based on a bracket at the end of the line
vim.keymap.set('n', '<leader>zf', '$zf%')



