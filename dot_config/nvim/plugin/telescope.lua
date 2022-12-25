local ok, telescope = pcall(require, "telescope")
if not ok then
	return
end

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>o', builtin.find_files, { desc = "Telescope Find Files" })
vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = "Telescope List Buffers" })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Telescope Help Tags" })
vim.keymap.set('n', '<leader>fc', builtin.commands, { desc = "Telescope List Commands" })
vim.keymap.set('n', '<leader>fm', builtin.man_pages, { desc = "Telescope Man Pages" })
vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = "Telescope Show Keymaps" })
vim.keymap.set('n', '<leader>fB', builtin.builtin, { desc = "Telescope Show Builtin Commands" })

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
