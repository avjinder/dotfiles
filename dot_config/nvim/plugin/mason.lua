local ok, mason = pcall(require, "mason")
if not ok then
	return
end

mason.setup({
	ui = {
		border = "rounded",
		keymaps = {
			toggle_package_expand = "<CR>",
			install_package = "i",
			update_package = "u",
			update_all_packages = "U",
			uninstall_package = "X",
		},
	}
})


local cap = vim.lsp.protocol.make_client_capabilities()
cap = require('cmp_nvim_lsp').default_capabilities(cap)

require("mason-lspconfig").setup({
	ensure_installed = { "sumneko_lua", "rust_analyzer", "gopls" },
	automatic_installation = true,
})

require("mason-lspconfig").setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup { capabilities = cap }
	end,

	["rust_analyzer"] = function()
		require("rust-tools").setup {
			tools = {
				inlay_hints = {
					auto = true,
					show_parameter_hints = true,
				}
			}
		}
	end,

	["pyright"] = function()
		require("lspconfig").pyright.setup {
			capabilities = cap,
			settings = {
				python = {
					analysis = {
						typeCheckingMode = "basic",
					}
				}
			}
		}
	end,

	["sumneko_lua"] = function()
		-- require("neodev").setup{}
		require("lspconfig").sumneko_lua.setup {
			capabilities = cap,
			settings = {
				Lua = {
					runtime = { version = 'LuaJIT' },
					diagnostics = { globals = { 'vim' }, },
					telemetry = { enable = false },
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true)
					},
					hint = { enable = true },
				}
			}
		}
	end,

	["sqls"] = function()
		require("lspconfig").sqls.setup {
			capabilities = cap,
			settings = {
				sqls = {
					connections = {
						{
							driver = "postgresql",
							dataSourceName = "postgresql://avjinder:avjinder@localhost/doughfellas",
						}
					}
				}
			},
		}
	end
})

