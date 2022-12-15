local ok, _ = require('bufferline')
if not ok then
	return
end

require('bufferline').setup {
	auto_hide = false,
	insert_at_end = true,
}

local nvim_tree_events = require('nvim-tree.events')
local bufferline_api = require('bufferline.api')

local function get_tree_size()
	return require('nvim-tree.view').View.width
end

nvim_tree_events.subscribe('TreeOpen', function()
	bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('Resize', function()
	bufferline_api.set_offset(get_tree_size())
end)

nvim_tree_events.subscribe('TreeClose', function()
	bufferline_api.set_offset(0)
end)

require('which-key').register({
	b = {
		name = "BarBar",
		P = { '<cmd>BufferPin<cr>', 'BarBar: pin tab' },
		c = { '<cmd>BufferClose<cr>', 'BarBar: close tab' },
		C = { '<cmd>BufferCloseAllButCurrent<cr>', 'BarBar: close all other tab' },
		b = { '<cmd>BufferPick<cr>', 'BarBar: pick tab' },
	},
	['0'] = { '<cmd>BufferLast<cr>', 'BarBar: goto last tab' },
	['1'] = { '<cmd>BufferGoto 1<cr>', 'BarBar: goto tab 1' },
	['2'] = { '<cmd>BufferGoto 2<cr>', 'BarBar: goto tab 2' },
	['3'] = { '<cmd>BufferGoto 3<cr>', 'BarBar: goto tab 3' },
	['4'] = { '<cmd>BufferGoto 4<cr>', 'BarBar: goto tab 4' },
	['5'] = { '<cmd>BufferGoto 5<cr>', 'BarBar: goto tab 5' },
	['6'] = { '<cmd>BufferGoto 6<cr>', 'BarBar: goto tab 6' },
	['7'] = { '<cmd>BufferGoto 7<cr>', 'BarBar: goto tab 7' },
	['8'] = { '<cmd>BufferGoto 8<cr>', 'BarBar: goto tab 8' },
	['9'] = { '<cmd>BufferGoto 9<cr>', 'BarBar: goto tab 9' },
	['>'] = { '<cmd>BufferMoveNext<cr>', 'BarBar: move tab forward' },
	['<'] = { '<cmd>BufferMovePrevious<cr>', 'BarBar: move tab backward' },
}, {
	prefix = '<localleader>',
	mode = 'n',
})

require('which-key').register({
	['gt'] = { '<cmd>BufferNext<cr>', 'BarBar: next tab' },
	['<Tab>'] = { '<cmd>BufferNext<cr>', 'BarBar: next tab' },
	['gT'] = { '<cmd>BufferPrevious<cr>', 'BarBar: prev tab' },
	['<S-Tab>'] = { '<cmd>BufferPrevious<cr>', 'BarBar: prev tab' },
}, { mode = 'n' })
