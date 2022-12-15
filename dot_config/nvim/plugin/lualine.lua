local ok, lualine = pcall(require, "lualine")
if not ok then
	return
end

local function cwd()
	return vim.fn.fnamemodify(vim.loop.cwd(), ":~")
end

lualine.setup {
	options = {
		theme = 'material',
		globalstatus = true,
	},
	sections = {
		lualine_a = { 'mode', 'aerial', cwd },
		lualine_b = { 'branch', 'diff', 'diagnostics' },
		lualine_c = { { 'filename', newfile_status = true, path = 1 } },
		lualine_x = { 'filetype' },
		lualine_y = { 'progress' },
		lualine_z = { 'location', 'filesize' },
	},
}
