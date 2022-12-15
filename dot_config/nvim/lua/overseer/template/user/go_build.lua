return {
	name = "go run",
	builder = function()
		local file = vim.fn.expand("%:p")
		vim.pretty_print(file)
		return {
			cmd = { "go" , "run"},
			args = { "." },
			-- components = { { "on_output_quickfix", open = true, }, "default" },
		}
	end,
	condition = {
		filetype = { "go" },
	}
}
