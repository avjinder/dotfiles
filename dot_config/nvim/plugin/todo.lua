local ok, todo = pcall(require, 'todo-comments')
if not ok then
	return
end

todo.setup {}

require('which-key').register({
	f = {
		name = "Telescope: show all todos",
		t = { '<cmd>TodoTelescope<cr>', 'Todo: Show todos in Telescope' },
	}
}, {
	mode = 'n',
	prefix = '<leader>'
})
