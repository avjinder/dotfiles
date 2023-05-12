local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{
		'junegunn/fzf',
		build = function() vim.fn['fzf#install']() end
	},
	'tpope/vim-commentary',
	-- tmux syntax highlighting and doc search
	'tmux-plugins/vim-tmux',
	'savq/melange',
	-- replacement for built-in vim.notify
	'rcarriga/nvim-notify',
	'rcarriga/nvim-dap-ui',

	-- snippet
	'hrsh7th/vim-vsnip',
	'hrsh7th/vim-vsnip-integ',

	-- completion
	{
		'hrsh7th/nvim-cmp',
		event = "InsertEnter",
		dependencies = {
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/cmp-nvim-lua',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-vsnip',
		}
	},

	'onsails/lspkind.nvim',
	'anuvyklack/hydra.nvim',

	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},

	{
		'nvim-tree/nvim-tree.lua',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate'
	},

	{
		'fatih/vim-go',
		build = ':GoUpdateBinaries'
	},

	'lewis6991/gitsigns.nvim',
	'lewis6991/impatient.nvim',
	'lewis6991/hover.nvim',

	'folke/which-key.nvim',
	'folke/trouble.nvim',
	'folke/neodev.nvim',
	{
		'folke/todo-comments.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	'voldikss/vim-floaterm',

	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	},

	"rust-lang/rust.vim",
	"simrat39/rust-tools.nvim",
	"windwp/nvim-autopairs",
	'stevearc/aerial.nvim',
	'stevearc/dressing.nvim',
	'stevearc/overseer.nvim',
	{
		'romgrk/barbar.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
	},
	'bfredl/nvim-luadev',
	'rebelot/kanagawa.nvim',

	'rafamadriz/friendly-snippets',
	'fladson/vim-kitty',

	'mrjones2014/legendary.nvim',
	'mfussenegger/nvim-dap',
	'nyoom-engineering/oxocarbon.nvim',
	{
		'goolord/alpha-nvim',
		dependencies = { { 'nvim-tree/nvim-web-devicons'} },
		config = function()
			require('alpha').setup(require 'alpha.themes.startify'.config)
		end
	},

	'ellisonleao/glow.nvim',
	{
		'iamcco/markdown-preview.nvim',
		build = function() vim.fn["mkdp#util#install"]() end
	},

	{
		'godlygeek/tabular',
		'preservim/vim-markdown'
	},

	{
		'ThePrimeagen/harpoon',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},

	{
		'michaelb/sniprun',
		build = 'bash ./install.sh'
	},
	'karb94/neoscroll.nvim',
	'lukas-reineke/indent-blankline.nvim',
	{
		'kosayoda/nvim-lightbulb',
		dependencies = { 'antoinemadec/FixCursorHold.nvim' }
	},
	'rareitems/printer.nvim',
	'j-hui/fidget.nvim',
	'rmagatti/goto-preview',
}

local opts = {}
require("lazy").setup(plugins, opts)

-- vim.notify = require('notify')

-- require('trouble').setup {}
-- require('nvim-lightbulb').setup { autocmd = { enabled = true }, }
-- require('printer').setup {
-- 	keymap = 'gp',
-- 	formatters = {
-- 		rust = function(_, var)
-- 			return string.format("dbg!(&%s);", var)
-- 		end
-- 	}
-- }

-- require('fidget').setup {}
-- require('fidget').setup {}
