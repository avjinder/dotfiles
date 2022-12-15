-- general
vim.g.mapleader = "\\"
vim.g.maplocalleader = ","
vim.o.t_co = 256
vim.opt.encoding = "utf-8" -- default encoding
vim.opt.syntax = "on" -- syntax highlighting
vim.opt.scrolloff = 6 -- allow <n> lines at bottom or top
vim.opt.ignorecase = true -- ignore case in search
vim.opt.laststatus = 3 -- global statusline
vim.opt.showmatch = true -- show matching bracket
vim.opt.number = true -- show line numbers
vim.opt.ruler = true -- show row and column numbers
vim.opt.tabstop = 4 -- tab equals <n> spaces
vim.opt.shiftwidth = 4 -- use <n> spaces for each indentation
vim.opt.showmode = true -- show mode in statusline
vim.opt.showcmd = true -- print command in statusline
vim.opt.cursorline = true -- highlight line cursor is on
vim.opt.autoread = true -- auto read file if modified externally
vim.opt.termguicolors = true -- enables 24-bit colors
vim.opt.hlsearch = true -- highlight previous search
vim.opt.incsearch = true -- show matches when searching
vim.opt.title = true -- set title
vim.opt.spell = false -- turn off spell check
vim.opt.background = "dark" -- dark background
vim.opt.clipboard = "unnamed,unnamedplus"
vim.opt.listchars = "eol:¶"
vim.opt.colorcolumn = "+0"
vim.api.nvim_set_hl(0, "ColorColumn", { bg = '#663399' })
vim.opt.textwidth = 120

-- folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false -- no folds on file open

-- better split
vim.opt.splitright = true
vim.opt.splitbelow = true
