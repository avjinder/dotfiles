require('which-key').register({
	l = {
		name = "LSP",
		D = { vim.lsp.buf.declaration, "Lsp: Go To Declaration" },
		d = { vim.lsp.buf.definition, "Lsp: Go To Definition" },
		I = { vim.lsp.buf.implementation, "Lsp: Show Implementations" },
		R = { vim.lsp.buf.rename, "Lsp: Rename" },
		i = { "<cmd>LspInfo<cr>", "Lsp: Connected Language Servers" },
		l = { vim.diagnostic.open_float, "Line Diagnostic" },
		n = { vim.diagnostic.goto_next, "Next Diagnostic" },
		p = { vim.diagnostic.goto_prev, "Prev Diagnostic" },
		q = { vim.diagnostic.setloclist, "Quickfix Diagnostics" },
		r = { vim.lsp.buf.references, "Lsp: Show References" },
		s = { vim.lsp.buf.document_symbol, "Lsp: Show Document Symbols" },
		t = { vim.lsp.buf.type_definition, "Lsp: Type Definition" },
		f = { vim.lsp.buf.format, "Lsp: Format Document" },
		c = { vim.lsp.buf.code_action, "Lsp: Code Action" }
	},
	k = { vim.lsp.buf.hover, "Lsp: Show Documentation" }
}, { prefix = '<leader>', mode = 'n' })

-- local sumneko_root_path = "/usr/local/lua_language_server"
-- local sumneko_binary = sumneko_root_path .. "/bin/lua-language-server"

-- local cap = vim.lsp.protocol.make_client_capabilities()
-- cap = require('cmp_nvim_lsp').default_capabilities(cap)

-- local aerial = require('aerial')
-- local lspconfig = require('lspconfig')

-- lspconfig.pyright.setup { capabilities = cap,
-- 	on_attach = function(client, bufnr)
-- 		print("Lsp pyright setting up")
-- 	end
-- }

-- lspconfig.gopls.setup { capabilities = cap,
-- 	on_attach = aerial.on_attach,
-- }

-- lspconfig.rust_analyzer.setup {
-- 	capabilities = cap,
-- 	on_attach = aerial.on_attach,
-- }

-- lspconfig.clangd.setup { capabilities = cap }

-- lspconfig.sumneko_lua.setup {
-- 	on_attach = aerial.on_attach,
-- 	cmd = { sumneko_binary, "-E", sumneko_root_path .. "/main.lua" },
-- 	settings = {
-- 		Lua = {
-- 			runtime = {
-- 				version = "LuaJIT",
-- 				-- path = vim.split(package.path, ";"),
-- 			},
-- 			diagnostics = {
-- 				globals = { "vim" },
-- 			},
-- 			workspace = {
-- 				library = vim.api.nvim_get_runtime_file("", true),
-- 				-- library = {
-- 				-- 	[vim.fn.expand("$VIMRUNTIME/lua")] = true,
-- 				-- 	[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
-- 				-- },
-- 			},
-- 		},
-- 	},
-- }


-- require('nvim-treesitter.configs').setup {
-- 	ensure_installed = { 'go', 'rust', 'lua' },
-- 	auto_install = true,
-- 	highlight = {
-- 		enable = true,
-- 		additional_vim_regex_highlighting = false,
-- 	}
-- }
