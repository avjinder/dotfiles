require('which-key').register({
	['<C-h>'] = { '<C-w>h', 'Focus left pane' },
	['<C-l>'] = { '<C-w>l', 'Focus right pane' },
	['<C-j>'] = { '<C-w>j', 'Focus bottom pane' },
	['<C-k>'] = { '<C-w>k', 'Focus top pane' },
}, { mode = 'n' })

require('which-key').register({
	['lf'] = { '<cmd>luafile %<cr>', 'run buffer through luafile' },
	['ev'] = { '<cmd>vsp $HOME/.dotfiles/nvim/init.lua<cr>', 'Edit init.lua' },
	['sv'] = { '<cmd>source $HOME/.dotfiles/nvim/init.lua<cr><cmd>echo "sourced init.lua"<cr>', 'Source init.lua' },
}, { prefix = '<localleader>', mode = 'n' })

-- Keymaps = {
	-- { 'n', '<localleader>lf', '<cmd>luafile %<cr>', 'run current file through luafile' },
	-- { 'n', '<localleader>ev', '<cmd>vsp $HOME/.dotfiles/nvim/init.lua<cr>', 'Edit init.lua' },
	-- { 'n', '<localleader>sv', '<cmd>source $HOME/.dotfiles/nvim/init.lua<cr>:echo "sourced init.lua"<cr>', 'Source init.lua' },
	------------ window bindings ----------
	-- {'n', '<C-h>', '<C-w>h', 'Focus left pane'},
	-- {'n', '<C-l>', '<C-w>l', 'Focus right pane'},
	-- {'n', '<C-j>', '<C-w>j', 'Focus top pane'},
	-- {'n', '<C-k>', '<C-w>k', 'Focus bottom pane'},
	-- ------------------ floaterm bindings ----------
	-- {'n', '<localleader>fc', '<cmd>FloatermNew<cr>', 'New Floaterm'},
	-- {'t', '<localleader>fc', '<C-\\><C-N><cmd>FloatermNew<cr>', 'New Floaterm'},
	-- {'n', '<localleader>fz', '<cmd>FloatermNew fzf<cr>', 'New Floaterm FZF window'},
	-- ----------------- next floaterm -------------
	-- {'n', '<localleader>fn', '<cmd>FloatermNext<cr>', 'Next Floaterm'},
	-- {'t', '<localleader>fn', '<C-\\><C-N><cmd>FloatermNext<cr>', 'Next Floaterm'},
	-- ----------------- prev floaterm -------
	-- {'n', '<localleader>fp', '<cmd>FloatermPrev<cr>', 'Prev Floaterm'},
	-- {'t', '<localleader>fp', '<cmd><C-\\><C-N>FloatermPrev<cr>', 'Prev Floaterm'},
	-- ----------------- floaterm toggle -----------
	-- {'n', '<localleader>ft', '<cmd>FloatermToggle<cr>', 'Toggle Floaterm'},
	-- {'t', '<localleader>ft', '<C-\\><C-N><cmd>FloatermToggle<cr>', 'Toggle Floaterm'},
	-- ------------------- floaterm kill -------------
	-- {'n', '<localleader>fk', '<cmd>FloatermKill<cr>', 'Kill Current Floaterm'},
	-- {'t', '<localleader>fk', '<C-\\><C-N><cmd>FloatermKill<cr>', 'Kill Current Floaterm'},

	-- {'n', '<localleader>fK', '<cmd>FloatermKill!<cr>', 'Kill All Floaterms'},
	-- {'t', '<localleader>fK', '<C-\\><C-N><cmd>FloatermKill!<cr>', 'Kill All Floaterms'},

	------------ trouble bindings -------------
	-- {'n', '<localleader>tt', '<cmd>TroubleToggle<cr>', 'Toggle Trouble Diagnostics'},
	-- {'n', '<localleader>tw', '<cmd>TroubleToggle workspace_diagnostics<cr>', 'Toggle Workspace Diagnostics'},
	-- {'n', '<localleader>td', '<cmd>TroubleToggle document_diagnostics<cr>', 'Toggle Document Diagnostics'},
	-- {'n', '<localleader>tl', '<cmd>TroubleToggle loclist<cr>', 'Toggle Loclist Diagnostics'},
	-- {'n', '<localleader>tq', '<cmd>TroubleToggle quickfix<cr>', 'Toggle Quickfix Diagnostics'},
	-- {'n', '<localleader>tr', '<cmd>TroubleToggle lsp_references<cr>', 'Toggle LSP Refernces Diagnostics'},

	----------------- barbar bindings --------------
	-- {'n', '<Tab>', '<cmd>BufferNext<cr>', 'Next Tab'},
	-- {'n', '<S-Tab>', '<cmd>BufferPrevious<cr>', 'Previous Tab'},
	-- {'n', '<Tab>', '<Cmd>BufferNext<cr>', "Next Tab" },
	-- {'n', '<S-Tab>', '<Cmd>BufferPrevious<cr>', "Previous Tab" },
	-- {'n', 'gt', '<Cmd>BufferNext<cr>', "Next Tab" },
	-- {'n', 'gT', '<Cmd>BufferPrevious<cr>', "Previous Tab" },
	-- {'n', '<localleader>1', '<Cmd>BufferGoto 1<cr>', 'Goto Tab 1'},
	-- {'n', '<localleader>2', '<Cmd>BufferGoto 2<cr>', 'Goto Tab 2'},
	-- {'n', '<localleader>3', '<Cmd>BufferGoto 3<cr>', 'Goto Tab 3'},
	-- {'n', '<localleader>4', '<Cmd>BufferGoto 4<cr>', 'Goto Tab 4'},
	-- {'n', '<localleader>5', '<Cmd>BufferGoto 5<cr>', 'Goto Tab 5'},
	-- {'n', '<localleader>6', '<Cmd>BufferGoto 6<cr>', 'Goto Tab 6'},
	-- {'n', '<localleader>7', '<Cmd>BufferGoto 7<cr>', 'Goto Tab 7'},
	-- {'n', '<localleader>8', '<Cmd>BufferGoto 8<cr>', 'Goto Tab 8'},
	-- {'n', '<localleader>9', '<Cmd>BufferGoto 9<cr>', 'Goto Tab 9'},
	-- {'n', '<localleader>0', '<Cmd>BufferLast<cr>', "Goto Last Tab" },
	-- {'n', '<localleader>>', '<Cmd>BufferMoveNext<cr>', "Move Tab Forward" },
	-- {'n', '<localleader><', '<Cmd>BufferMovePrevious<cr>', "Move Tab Backward" },
	-- {'n', '<localleader>bP', '<Cmd>BufferPin<cr>', "Pin Tab" },
	-- {'n', '<localleader>bc', '<Cmd>BufferClose<cr>', "Close Tab" },
	-- {'n', '<localleader>bC', '<Cmd>BufferCloseAllButCurrent<cr>', "Close all other Tabs" },
	-- {'n', '<localleader>bb', '<Cmd>BufferPick<cr>'},
-- }

-- local nmap = function(input)
-- 	vim.keymap.set(input[1], input[2], input[3], { desc = input[4] })
-- end

-- for _, t in pairs(Keymaps) do
-- 	nmap(t)
-- end


-- vim.keymap.set('n', '<localleader>ev', '<Cmd>vsp ~/.dotfiles/nvim/init.lua<CR>', { desc = "Edit init.lua" })
-- vim.keymap.set('n', '<localleader>sv', '<Cmd>source ~/.dotfiles/nvim/init.lua<cr>:echo "sourced init.lua"<CR>',
-- 	{ desc = "Source init.lua" })

-- vim.keymap.set('n', '<localleader>lf', '<Cmd>luafile %<CR>', { buffer = false, desc = "run current file through luafile" })

-- ------------- TELESCOPE BEGIN ------------
-- vim.keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files<CR>,', { desc = "Telescope Find Files" })
-- vim.keymap.set('n', '<leader>fh', '<Cmd>Telescope help_tags<CR>', { desc = "Telescope Help Tags" })
-- vim.keymap.set('n', '<leader>fc', '<Cmd>Telescope commands<CR>', { desc = "Telescope List Commands" })
-- vim.keymap.set('n', '<leader>fb', '<Cmd>Telescope buffers<CR>', { desc = "Telescope List Buffers" })
-- vim.keymap.set('n', '<leader>fm', '<Cmd>Telescope man_pages<CR>', { desc = "Telescope Man Pages" })
-- vim.keymap.set('n', '<leader>fk', '<Cmd>Telescope keymaps<CR>', { desc = "Telescope Show Keymaps" })
-- ------------- TELESCOPE END ------------

-- ------------ FLOATERM BEGIN -------------
-- -- new floatterm in normal and terminal modes
-- vim.keymap.set('n', '<localleader>fc', '<Cmd>FloatermNew<CR>')
-- vim.keymap.set('t', '<localleader>fc', '<C-\\><C-N><Cmd>FloatermNew<CR>')

-- vim.keymap.set('n', '<localleader>fz', '<Cmd>FloatermNew fzf<CR>')

-- -- next floaterm in normal and terminal modes
-- vim.keymap.set('n', '<localleader>fn', '<Cmd>FloatermNext<CR>')
-- vim.keymap.set('t', '<localleader>fn', '<C-\\><C-N><Cmd>FloatermNext<CR>')


-- -- prev floaterm in normal and terminal modes
-- vim.keymap.set('n', '<localleader>fp', '<Cmd>FloatermPrev<CR>')
-- vim.keymap.set('t', '<localleader>fp', '<C-\\><C-N><Cmd>FloatermPrev<CR>')

-- -- toggle floatterm in normal and terminal modes
-- vim.keymap.set('n', '<localleader>ft', '<Cmd>FloatermToggle<CR>')
-- vim.keymap.set('t', '<localleader>ft', '<C-\\><C-N><Cmd>FloatermToggle<CR>')

-- -- kill floaterm windows
-- vim.keymap.set('n', '<localleader>fk', '<Cmd>FloatermKill<CR>', { desc = "kill current floaterm" })
-- vim.keymap.set('t', '<localleader>fk', '<C-\\><C-N><Cmd>FloatermKill<CR>', { desc = "kill current floaterm" })
-- vim.keymap.set('n', '<localleader>fK', '<Cmd>FloatermKill!<CR>', { desc = "kill all floaterms" })
-- vim.keymap.set('t', '<localleader>fK', '<C-\\><C-N><Cmd>FloatermKill!<CR>', { desc = "kill all floaterms" })
-- ------------ FLOATERM END -------------

-- ------------ TROUBLE BEGIN -------------
-- vim.keymap.set('n', '<localleader>tt', '<Cmd>TroubleToggle<cr>')
-- vim.keymap.set('n', '<localleader>tw', '<Cmd>TroubleToggle workspace_diagnostics<cr>')
-- vim.keymap.set('n', '<localleader>td', '<Cmd>TroubleToggle document_diagnostics<cr>')
-- vim.keymap.set('n', '<localleader>tl', '<Cmd>TroubleToggle loclist<cr>')
-- vim.keymap.set('n', '<localleader>tq', '<Cmd>TroubleToggle quickfix<cr>')
-- vim.keymap.set('n', '<localleader>tr', '<Cmd>TroubleToggle lsp_references<cr>')
-- ------------ TROUBLE END -------------

-- ------------- BARBAR BEGIN -----------
-- vim.keymap.set('n', '<Tab>', '<Cmd>BufferNext<cr>', { desc = "Next Tab" })
-- vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferPrevious<cr>', { desc = "Previous Tab" })
-- vim.keymap.set('n', 'gt', '<Cmd>BufferNext<cr>', { desc = "Next Tab" })
-- vim.keymap.set('n', 'gT', '<Cmd>BufferPrevious<cr>', { desc = "Previous Tab" })
-- vim.keymap.set('n', '<localleader>1', '<Cmd>BufferGoto 1<cr>')
-- vim.keymap.set('n', '<localleader>2', '<Cmd>BufferGoto 2<cr>')
-- vim.keymap.set('n', '<localleader>3', '<Cmd>BufferGoto 3<cr>')
-- vim.keymap.set('n', '<localleader>4', '<Cmd>BufferGoto 4<cr>')
-- vim.keymap.set('n', '<localleader>5', '<Cmd>BufferGoto 5<cr>')
-- vim.keymap.set('n', '<localleader>6', '<Cmd>BufferGoto 6<cr>')
-- vim.keymap.set('n', '<localleader>7', '<Cmd>BufferGoto 7<cr>')
-- vim.keymap.set('n', '<localleader>8', '<Cmd>BufferGoto 8<cr>')
-- vim.keymap.set('n', '<localleader>9', '<Cmd>BufferGoto 9<cr>')
-- vim.keymap.set('n', '<localleader>0', '<Cmd>BufferLast<cr>', { desc = "Last Tab" })
-- vim.keymap.set('n', '<localleader>bP', '<Cmd>BufferPin<cr>', { desc = "Pin Tab" })
-- vim.keymap.set('n', '<localleader>bc', '<Cmd>BufferClose<cr>', { desc = "Close Tab" })
-- vim.keymap.set('n', '<localleader>bC', '<Cmd>BufferCloseAllButCurrent<cr>', { desc = "Close all other Tabs" })
-- vim.keymap.set('n', '<localleader>bb', '<Cmd>BufferPick<cr>')
-- ------------- BARBAR END -----------

-- ---------------  WINDOW MOVEMENT ---------------
-- vim.keymap.set('n', '<C-h>', '<C-w>h')
-- vim.keymap.set('n', '<C-j>', '<C-w>j')
-- vim.keymap.set('n', '<C-k>', '<C-w>k')
-- vim.keymap.set('n', '<C-l>', '<C-w>l')
-- ------------ WINDOW MOVEMENT END --------------

---------- LSP Actions -------------
-- vim.keymap.set('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', {buffer = false})
-- vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = false })
-- vim.keymap.set('n', ',lt', vim.lsp.buf.signature_help, {buffer = false})
