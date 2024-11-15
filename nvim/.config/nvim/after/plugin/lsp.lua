local lsp = require('lsp-zero')

lsp.preset('recommended')

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'eslint', 'gopls', 'rust_analyzer', 'luau_lsp', 'lua_ls', 'clangd'},
	handlers = {
		lsp.default_setup,
	}
})


local cmp = require('cmp')
local cmp_format = lsp.cmp_format()
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  formatting = cmp_format,
  mapping = cmp.mapping.preset.insert({
		['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
		['<cr>'] = cmp.mapping.confirm({select = true}),
		['<C-Space>'] = cmp.mapping.complete(),
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }),
})

-- lsp.set_preferences({
-- 	sign_icons = {}
-- })

lsp.on_attach(function(client, bufnr)
	local opts = {buffer= bufnr, remap = false}

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "[g", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "]g", function() vim.diagnostic.goto_prev() end, opts)
end)

lsp.setup()


