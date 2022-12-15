local wk = require('which-key')
wk.setup {
	plugins = {
		marks = true,
		registers = true,
		spelling = {
			enabled = true,
			suggestions = 10,
		}
	},
	window = {
		border = 'double',
	},
	layout = {
		height = { min = 6, max = 40 },
		width = { min = 20, max = 80 },
		spacing = 5,
		align = 'center',
	}
}
