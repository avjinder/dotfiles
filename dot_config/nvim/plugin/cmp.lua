local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup{
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body)
		end
	},
	mapping = cmp.mapping.preset.insert({
		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-d>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete({}),
		['<CR>'] = cmp.mapping.confirm({select = true}),
		['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), {"i"}),
		['<S-Tab>'] = cmp.mapping(cmp.mapping.select_prev_item(), {"i"}),

	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	sources = cmp.config.sources(
	{
		{name = 'nvim_lsp'},
		{name = 'vsnip'},
		{name = 'buffer'},
		{name = 'nvim_lua'},
		{name = 'path'},
		{name = 'nvim_lsp_signature_help'},
	}),
	formatting = {
		format = lspkind.cmp_format({
			mode = 'symbol_text',
			maxwidth = 50
		})
	}
}
