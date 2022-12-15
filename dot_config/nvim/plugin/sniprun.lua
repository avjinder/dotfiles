local ok, sniprun = pcall(require, 'sniprun')
if not ok then
	return
end

sniprun.setup {
	display = { 'NvimNotify', 'VirtualTextOk' },
	display_options = {
		notification_timeout = 5 -- in sec
	},
}

require('which-key').register({
	s = {
		name = "Sniprun",
		r = { sniprun.run, 'Sniprun: Run' },
		i = { sniprun.info, 'Sniprun: Info' },
		c = { '<cmd>lua require("sniprun.display").close_all()<cr>', 'Sniprun: Close' },
		R = { sniprun.reset, 'Sniprun: Reset' }

	}
}, { prefix = '<localleader>', mode = 'n' })

require('which-key').register({
	r = { sniprun.run, 'Sniprun: Run' },
}, { mode = 'v' })
