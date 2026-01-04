-- Formatting
local autocmd_group = vim.api.nvim_create_augroup("Formatting auto-commands", { clear = true })

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    pattern = { "*.odin" },
    desc = "Auto-format .odin files after saving",
    callback = function()
        local fileName = vim.api.nvim_buf_get_name(0)
        vim.cmd(":silent !odinfmt -w " .. fileName)
    end,
    group = autocmd_group,
})
