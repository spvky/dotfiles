-- Formatting
local autocmd_group = vim.api.nvim_create_augroup("Formatting auto-commands", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    pattern = { "*.jai" },
    desc = "Auto-format .jai files after saving",
    callback = function()
        local fileName = vim.api.nvim_buf_get_name(0)
        vim.cmd(":silent !jai-format -to_file " .. fileName)
    end,
    group = autocmd_group,
})

vim.keymap.set('n', '<leader>jrr', '<cmd>!jai build.jai - -run<CR>', {desc = 'Call "jai build.jai - -run" in the current working directory'})
vim.keymap.set('n', '<leader>jrd', '<cmd>!jai build.jai - -dev -run<CR>', {desc = 'Call "jai build.jai - -dev -run" in the current working directory'})
vim.keymap.set('n', '<leader>jbb', '<cmd>!jai build.jai<CR>', {desc = 'Call "jai build.jai" in the current working directory'})
vim.keymap.set('n', '<leader>jbd', '<cmd>!jai build.jai - -dev<CR>', {desc = 'Call "jai build.jai - -dev" in the current working directory'})
