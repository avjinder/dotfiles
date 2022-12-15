vim.g.floaterm_width = 0.9
vim.g.floaterm_height = 0.9
vim.g.floaterm_opener = 'edit'

require('which-key').register({
	f = {
		name = "Floaterm",
		c = { "<cmd>FloatermNew<cr>", "New Floaterm" },
		f = { "<cmd>FloatermNew fzf<cr>", "Floaterm FZF"},
		n = { "<cmd>FloatermNext<cr>", "Next Floaterm" },
		p = { "<cmd>FloatermPrev<cr>", "Prev Floaterm" },
		t = { "<cmd>FloatermToggle<cr>", "Toggle Floaterm" },
		k = { "<cmd>FloatermKill<cr>", "Kill Floaterm" },
		K = { "<cmd>FloatermKill!<cr>", "Kill All Floaterms" },

	}
}, {
	prefix = '<localleader>',
	mode = 'n'
})

require('which-key').register({
	f = {
		name = "Floaterm",
		c = { "<C-\\><C-N><cmd>FloatermNew<cr>", "New Floaterm"},
		n = { "<C-\\><C-N><cmd>FloatermNext<cr>", "Next Floaterm"},
		p = { "<C-\\><C-N><cmd>FloatermPrev<cr>", "Prev Floaterm"},
		t = { "<C-\\><C-N><cmd>FloatermToggle<cr>", "Toggle Floaterm"},
		k = { "<C-\\><C-N><cmd>FloatermKill<cr>", "Kill Floaterm"},
		K = { "<C-\\><C-N><cmd>FloatermKill!<cr>", "Kill All Floaterms"},
	}
}, {
	prefix = '<localleader>',
	mode = 't'
})
