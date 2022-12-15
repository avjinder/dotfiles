local ok, gitsigns = pcall(require, "gitsigns")
if not ok then
	return
end

gitsigns.setup {
	numhl = true,
	linehl = false,
	word_diff = false,
	preview_config = {
		border = "rounded",
	},
}

require('which-key').register({
	g = {
		name = 'GitSigns',
		p = { gitsigns.preview_hunk, "Gitsigns: preview hunk" },
		D = { gitsigns.diffthis, "Gitsigns: diff file" },
		l = { gitsigns.toggle_linehl, "Gitsigns: toggle linehl" },
		w = { gitsigns.toggle_word_diff, "Gitsigns: toggle word diff" },
		n = { gitsigns.toggle_numhl, "Gitsigns: toggle numhl" },
		d = { gitsigns.toggle_deleted, "Gitsigns: toggle deleted" },
		h = {gitsigns.next_hunk, "Gitsigns: next hunk"},
		H = {gitsigns.prev_hunk, "Gitsigns: prev hunk"},
	},

}, {
	prefix = '<localleader>', mode = 'n',
})
	-- on_attach = function(bufnr)
		-- vim.keymap.set('n', '<localleader>g]', gitsigns.next_hunk, { desc = "Gitsigns: next git hunk", buffer = bufnr })
		-- vim.keymap.set('n', '<localleader>g[', gitsigns.prev_hunk, { desc = "Gitsigns: prev git hunk", buffer = bufnr })
		-- -- vim.keymap.set('n', '<localleader>gn', '<Cmd>Gitsigns next_hunk<cr>', {desc = "next git hunk", buffer = bufnr})
		-- -- vim.keymap.set('n', '<localleader>gp', '<Cmd>Gitsigns prev_hunk<cr>', {desc = "previous git hunk", buffer = bufnr})
		-- vim.keymap.set('n', '<localleader>gP', '<Cmd>Gitsigns preview_hunk<cr>', { desc = "preview git hunk", buffer = bufnr })

		-- vim.keymap.set('n', '<localleader>gd', '<Cmd>Gitsigns diffthis<cr>', { desc = "show git diff", buffer = bufnr })
		-- vim.keymap.set('n', '<localleader>gs', '<Cmd>Gitsigns stage_buffer<cr>', { desc = "stage buffer", buffer = bufnr })

		-- vim.keymap.set('n', '<localleader>gtl', '<Cmd>Gitsigns toggle_linehl<cr>',
		-- 	{ desc = "toggle line highlight", buffer = bufnr })
		-- vim.keymap.set('n', '<localleader>gtw', '<Cmd>Gitsigns toggle_word_diff<cr>',
		-- 	{ desc = "toggle word diff", buffer = bufnr })
		-- vim.keymap.set('n', '<localleader>gtn', '<Cmd>Gitsigns toggle_numhl<cr>',
		-- 	{ desc = "toggle number highlight", buffer = bufnr })
		-- vim.keymap.set('n', '<localleader>gtd', '<Cmd>Gitsigns toggle_deleted<cr>',
		-- 	{ desc = "toggle deleted lines", buffer = bufnr })
	-- end
-- }

