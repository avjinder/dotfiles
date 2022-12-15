local ok, glow = pcall(require, 'glow')
if not ok then
	return
end

glow.setup {
	style = 'dark',
	width = 90,
	pager = false,
	height = 120,
	width_ratio = 0.8,
	height_ratio = 0.8,
}

