local ok, ns = pcall(require, 'neoscroll')
if not ok then
	return
end

ns.setup {
	hide_cursor = true,
	performance_mode = false,
	easing_function = 'sine',
}

