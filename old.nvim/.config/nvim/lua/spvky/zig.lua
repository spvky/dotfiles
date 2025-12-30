-- Zig specific keymaps
vim.keymap.set('n', '<leader>zs','i@import("std")<esc>')
vim.keymap.set('n', '<leader>zi','i@import("")<esc>2ji')
vim.keymap.set('i', 'zi ', ' @import("");<left><left><left>')

