local ok, dap = pcall(require, 'dap')
if not ok then
	return
end

dap.adapters.delve = {
	type = 'server',
	port = '${port}',
	executable = {
		command = 'dlv',
		args = { 'dap', '-l', '127.0.0.1:${port}' },
	}
}

-- local ext_path = vim.env.HOME .. "/.local//share/nvim/mason"
-- local codelldb_path = ext_path .. "/bin/codelldb"
-- local liblldb_path = ext_path .. "/packages/codelldb/extension/lldb/lib/liblldb.so"

-- dap.adapters.codelldb = {
-- 	type = 'server',
-- 	host = '127.0.0.1',
-- 	port = '${port}',
-- 	executable = {
-- 		command = codelldb_path,
-- 		args = { "--liblldb", liblldb_path, "--port", "${port}" },
-- 	}
-- }

dap.configurations.go = {
	{
		type = "delve",
		name = "Debug",
		request = "launch",
		program = "${file}"
	},
	{
		type = "delve",
		name = "Debug Test",
		request = "launch",
		mode = "test",
		program = "${file}"
	},
	{
		type = "delve",
		name = "Debug Test (go.mod)",
		request = "launch",
		mode = "test",
		program = "./${relativeFileDirName}"
	},
}

-- dap.configurations.rust = {
-- 	{
-- 		type = 'codelldb',
-- 		name = 'Debug',
-- 		request = 'launch',
-- 		program = "${file}"
-- 	}
-- }


local wk = require('which-key')
wk.register({
	d = {
		name = "DAP",
		t = { dap.toggle_breakpoint, "DAP: Toggle Breakpoint" },
		T = { dap.terminate, "DAP: Terminate" },
		o = { dap.step_over, "DAP: Step Over" },
		i = { dap.step_into, "DAP: Step Into" },
		O = { dap.step_out, "DAP: Step Out" },
		c = { dap.continue, "DAP: Continue" },
		-- C = { dap.clear_breakpoints, "DAP: Clear All Breakpoints" },
		C = { "<cmd>lua require('dap').clear_breakpoints();print 'Cleared all breakpoints'<cr>", "DAP: Clear All Breakpoints" },
		l = { "<cmd>lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log message: '))<cr>", "DAP: Set Breakpoint" }
	}
}, { prefix = '<leader>', mode = 'n' })
