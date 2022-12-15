local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({
		"git",
		"clone",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing Packer")
	vim.api.nvim_command("packadd packer.nvim")
end

local packer = require('packer')
local use = packer.use

packer.startup({ function()
	use 'wbthomason/packer.nvim'
	use {
		'junegunn/fzf',
		run = function()
			vim.fn['fzf#install']()
		end
	}
	use 'tpope/vim-commentary'
	-- tmux syntax highlighting and doc search
	use 'tmux-plugins/vim-tmux'
	-- use 'mhinz/vim-startify'
	use 'savq/melange'
	-- replacement for built-in vim.notify
	use 'rcarriga/nvim-notify'
	use 'rcarriga/nvim-dap-ui'

	-- snippet
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/vim-vsnip-integ'

	-- completion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-nvim-lua'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lsp-signature-help'
	use 'hrsh7th/cmp-vsnip'

	use 'onsails/lspkind.nvim'
	use 'anuvyklack/hydra.nvim'

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
	}

	use {
		'kyazdani42/nvim-tree.lua',
		requires = { 'kyazdani42/nvim-web-devicons' },
	}
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { 'nvim-lua/plenary.nvim' }
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	use {
		'fatih/vim-go',
		run = ':GoUpdateBinaries'
	}

	use 'lewis6991/gitsigns.nvim'
	use 'lewis6991/impatient.nvim'
	use 'lewis6991/hover.nvim'

	use 'folke/which-key.nvim'
	use 'folke/trouble.nvim'
	use 'folke/neodev.nvim'

	use 'voldikss/vim-floaterm'

	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	}

	use "rust-lang/rust.vim"
	use "simrat39/rust-tools.nvim"
	use "windwp/nvim-autopairs"
	use 'stevearc/aerial.nvim'
	use 'stevearc/dressing.nvim'
	use 'stevearc/overseer.nvim'
	use {
		'romgrk/barbar.nvim',
		requires = { 'kyazdani42/nvim-web-devicons' },
	}
	use 'bfredl/nvim-luadev'
	use 'rebelot/kanagawa.nvim'

	use 'rafamadriz/friendly-snippets'
	use 'fladson/vim-kitty'

	use 'mrjones2014/legendary.nvim'
	use 'mfussenegger/nvim-dap'
	use 'nyoom-engineering/oxocarbon.nvim'
	use {
		'goolord/alpha-nvim',
		requies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require('alpha').setup(require 'alpha.themes.startify'.config)
		end
	}

	use 'ellisonleao/glow.nvim'
	use {
		'iamcco/markdown-preview.nvim',
		run = function() vim.fn["mkdp#util#install"]() end
	}

	use {
		'godlygeek/tabular',
		'preservim/vim-markdown'
	}

	use {
		'ThePrimeagen/harpoon',
		requires = { 'nvim-lua/plenary.nvim' }
	}

	use {
		'michaelb/sniprun',
		run = 'bash ./install.sh'

	}

end,

	config = {
		display = {
			open_fn = function()
				return require('packer.util').float({ border = "rounded" })
			end
		},
		profile = {
			enable = true,
			threshold = 0,
			max_jobs = 20,
		},
	}
})

vim.notify = require('notify')

require('trouble').setup {}

