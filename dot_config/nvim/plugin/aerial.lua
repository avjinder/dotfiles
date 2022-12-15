local ok, aerial = pcall(require, "aerial")
if not ok then
	return
end

aerial.setup {
	on_attach = function()
		require('which-key').register({
			a = {
				name = 'Aerial',
				t = { aerial.toggle, 'Aerial: toggle' },
				o = { aerial.open, 'Aerial: open' },
				c = { aerial.close, 'Aerial: close' },
				f = { '<cmd>call aerial#fzf()<cr>', 'Aerial: show document symbols in fzf' }
			}
		}, { prefix = '<leader>', mode = 'n' })
	end,
	backends = { "treesitter", "lsp", "man", "markdown" },
	close_on_select = false,
	show_guides = true,
	layout = {
		min_width = { 0.2 },
		default_direction = "prefer_right",
		placement = "edge",
	},
}
require('telescope').load_extension('aerial')
