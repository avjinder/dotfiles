local ok, _ = pcall(require, 'harpoon')
if not ok then
	return
end

require('telescope').load_extension('harpoon')
require('which-key').register({
	h = {
		name = "Harpoon",
		m = { require('harpoon.mark').add_file, "Add current file to Harpoon" },
		s = { require('harpoon.ui').toggle_quick_menu, "Show harpoon marks" },
		n = { require('harpoon.ui').nav_next, "Next Harpoon mark" },
		p = { require('harpoon.ui').nav_prev, "Prev Harpoon mark" },

		["1"] = { '<cmd>lua require("harpoon.ui").nav_file(1)<cr>', "Go to first harpoon file" },
		["2"] = { '<cmd>lua require("harpoon.ui").nav_file(2)<cr>', "Go to second harpoon file" },
		["3"] = { '<cmd>lua require("harpoon.ui").nav_file(3)<cr>', "Go to third harpoon file" },
		["4"] = { '<cmd>lua require("harpoon.ui").nav_file(4)<cr>', "Go to fourth harpoon file" },
		["5"] = { '<cmd>lua require("harpoon.ui").nav_file(5)<cr>', "Go to fifth harpoon file" },
		["6"] = { '<cmd>lua require("harpoon.ui").nav_file(6)<cr>', "Go to sixth harpoon file" },
	},
	f = {
		name = "Harpoon",
		f = { "<cmd>Telescope harpoon marks<cr>", "Telescope: Show Harpoon marks" }
	}
}, {
	prefix = '<leader>',
	mode = 'n',
})
