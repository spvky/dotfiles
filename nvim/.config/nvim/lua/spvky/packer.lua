-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- Telescope for fuzzy finding
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- Theme
	use 'navarasu/onedark.nvim'
	-- File Explorer
  use "stevearc/oil.nvim"
	-- treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	-- Git integration
	use('tpope/vim-fugitive')
	use('rust-lang/rust.vim')
	use('vim-airline/vim-airline')
	use('vim-airline/vim-airline-themes')
	use('tpope/vim-commentary')
	use('bakudankun/pico-8.vim')
	use('ziglang/zig.vim')
	-- Notes
  use {
    'renerocksai/telekasten.nvim',
    requires = {'nvim-telescope/telescope.nvim'}
  }
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
	}
end)
