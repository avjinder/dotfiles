local ok, rust_tools = pcall(require, 'rust-tools')
if not ok then
	return
end

-- local codelldb_path = "/home/avjinder/.local/share/nvim/mason/bin/codelldb"local 
local ext_path = vim.env.HOME .. "/.local//share/nvim/mason"
local codelldb_path =  ext_path .. "/bin/codelldb"
local liblldb_path = ext_path .. "/packages/codelldb/extension/lldb/lib/liblldb.so"

rust_tools.setup {
	tools = {},
	dap = {
		adapter = require('rust-tools.dap').get_codelldb_adapter(codelldb_path, liblldb_path)
	},
}

require('which-key').register({
	d = {
		name = "Rust Debugger",
		r = { '<cmd>RustDebuggables<cr>', "Start Rust Debugger" }
	},
}, { prefix = '<leader>', mode = 'n'})
