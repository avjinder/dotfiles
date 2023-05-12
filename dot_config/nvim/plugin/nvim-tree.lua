require('nvim-tree').setup {
	sort_by = 'case_sensitive',
	disable_netrw = true,
	-- open_on_setup = true,
	open_on_tab = true,
	on_attach = function(bufnr)
		local api = require('nvim-tree.api')
		vim.keymap.set('n', 't', api.node.open.tab, { desc = "Open: New Tab", bufnr = bufnr })
	end,
	view = {
		float = {
			enable = false,
			open_win_config = {
				relative = "cursor",
				border = "rounded",
			}
		},
		-- mappings = {
		-- 	list = {
		-- 		{key={"t"}, action = "tabnew"}
		-- 	}
		-- }
	},
	actions = {
		open_file = {
			quit_on_open = true,
		}
	}
}

require('which-key').register({
	t = { '<cmd>NvimTreeToggle<cr>', "Toggle NvimTree" },
}, { prefix = '<leader>', mode = 'n' })
