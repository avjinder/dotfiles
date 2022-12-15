local ok, overseer = pcall(require, 'overseer')
if not ok then
	return
end

overseer.setup {
	templates = { "builtin", "user.go_build" },
	strategy = "jobstart",
}

overseer.register_template({
	name = "go build",
	builder = function()
		return {
			cmd = { "go", "build" },
			args = {"-o", "foo"},
			cwd = ".",
		}
	end,
	desc = 'go build',
	condition = {
		filetype = { 'go' },
	}
})

require('which-key').register({
	o = {
		name = 'Overseer',
		r = { '<cmd>OverseerRun<cr>', 'Overseer: Run'} ,
		t = { '<cmd>OverseerToggle<cr>', 'Overseer: Toggle'} ,
		o = { '<cmd>OverseerOpen<cr>', 'Overseer: Open'} ,
		c = { '<cmd>OverseerClose<cr>', 'Overseer: Close'} ,
		q = {'<cmd>OverseerQuickAction<cr>', 'Overseer: Quick Action' },
		a = {'<cmd>OverseerTaskAction<cr>', 'Overseer: Task Action' },
	}
}, {
	prefix = '<localleader>',
	mode = 'n',
})
