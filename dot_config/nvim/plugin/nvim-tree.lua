require('nvim-tree').setup{
	sort_by= 'case_sensitive',
	disable_netrw = true,
	-- open_on_setup = true,
	open_on_tab = true,
	view = {
		float = {
			enable = false,
			open_win_config = {
			relative = "cursor",
			border = "rounded",
			}
		},
		mappings = {
			list = {
				{key={"t"}, action = "tabnew"}
			}
		}
	},
	actions = {
		open_file = {
			quit_on_open= true,
		}
}
}

-- vim.keymap.set('n', '<leader>t',  '<Cmd>NvimTreeToggle<CR>', {desc = "Toggle NvimTree"})
require('which-key').register({
	t = { '<cmd>NvimTreeToggle<cr>', "Toggle NvimTree"},
}, { prefix = '<leader>', mode = 'n'})
