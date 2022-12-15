local ok, telescope = pcall(require, "telescope")
if not ok then
	return
end

-- vim.keymap.set('n', '<leader>ff', '<Cmd>Telescope find_files<CR>,', { desc = "Telescope Find Files" })
vim.keymap.set('n', '<leader>o', '<Cmd>Telescope find_files<CR>,', { desc = "Telescope Find Files" })
vim.keymap.set('n', '<leader>b', '<Cmd>Telescope buffers<CR>', { desc = "Telescope List Buffers" })
vim.keymap.set('n', '<leader>fh', '<Cmd>Telescope help_tags<CR>', { desc = "Telescope Help Tags" })
vim.keymap.set('n', '<leader>fc', '<Cmd>Telescope commands<CR>', { desc = "Telescope List Commands" })
vim.keymap.set('n', '<leader>fm', '<Cmd>Telescope man_pages<CR>', { desc = "Telescope Man Pages" })
vim.keymap.set('n', '<leader>fk', '<Cmd>Telescope keymaps<CR>', { desc = "Telescope Show Keymaps" })
vim.keymap.set('n', '<leader>fB', '<Cmd>Telescope builtin<CR>', { desc = "Telescope Show Builtin Commands" })

telescope.setup {
	defaults = {
		layout_strategy = 'flex',
		scroll_strategy = 'cycle',
		layout_config = { height = 0.95, width = 0.95 },
		initial_mode = 'insert',
		prompt_prefix = '> ',
		selection_caret = '👉',
	},
	pickers = {
		find_files = {
			initial_mode = 'insert',
		}
	}
}
