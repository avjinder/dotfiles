local ok, dapui = pcall(require, 'dapui')
if not ok then
	return
end

dapui.setup {
	mappings = {
		expand = { "<CR>" },
		open = "o",
		remove = "x",
		edit = "e",
		repl = "r",
		toggle = "t"
	},
	layouts = {
		{
			elements = { "breakpoints", "scopes" },
			size = 0.20,
			position = "left"
		},
		{
			elements = { "repl", "console" },
			size = 0.20,
			position = "bottom",
		},
		{
			elements = { "watches", "stacks" },
			position = "right",
			size = 0.20,

		}
	},
	controls = {
		enabled = true,
		element = "repl",
	},
	floating = {
		max_height = 0.3,
		max_width = 0.3,
		border = "single",
		mappings = {
			close = { "q", "<Esc>" },
		},
	},
	windows = { indent = 1 }
}

local dap = require('dap')

dap.listeners.after.event_initialized["dapui_config"] = function()
	print("dapui config initialized")
	dapui.open({})
end

dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close({})
end

dap.listeners.after.event_exited["dapui_config"] = function()
	dapui.close({})
end

require('which-key').register({
	d = {
		name = "DapUI",
		d = { dapui.toggle, "Toggle DapUI" },
		s = { dapui.open, "Open DapUI" },
		h = { dapui.close, "Close DapUI" }
	}
}, {
	mode = 'n',
	prefix = '<leader>'
})
