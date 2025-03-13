

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	-- use 'gruvbox-community/gruvbox'
	use 'ellisonleao/gruvbox.nvim'

	-- use 'neovim/nvim-lspconfig'
	-- use 'dart-lang/dart-vim-plugin'
	-- use 'williamboman/nvim-lsp-installer'

	-- Completion
	-- use 'hrsh7th/nvim-cmp'
	-- use 'hrsh7th/cmp-nvim-lsp'
	-- use 'hrsh7th/cmp-buffer'
	--use 'hrsh7th/cmp-path'
	--use 'hrsh7th/cmp-cmdline'

	-- use 'hrsh7th/cmp-buffer'
	-- use 'hrsh7th/cmp-path'
	-- use 'hrsh7th/cmp-cmdline'

	use 'windwp/nvim-autopairs'

	-- For luasnip users.
	-- use 'L3MON4D3/LuaSnip'
	-- use 'saadparwaiz1/cmp_luasnip'

	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'

	use 'nvim-treesitter/nvim-treesitter'

	-- use 'lewis6991/gitsigns.nvim'

	use 'numToStr/Comment.nvim'

	use 'JoosepAlviste/nvim-ts-context-commentstring'

	-- use 'aklt/plantuml-syntax'

	-- use 'tikhomirov/vim-glsl'



	-- LSP Zero
	-- LSP Support
	use 'neovim/nvim-lspconfig'
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'

	use 'folke/neodev.nvim'

	-- Autocompletion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'saadparwaiz1/cmp_luasnip'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'

	--  Snippets
	use 'L3MON4D3/LuaSnip'
	use 'rafamadriz/friendly-snippets'

	use {
		'akinsho/flutter-tools.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
			'stevearc/dressing.nvim', -- optional for vim.ui.select
		},
	}

	-- use 'VonHeikemen/lsp-zero.nvim'

	require("flutter-tools").setup {}
end)
