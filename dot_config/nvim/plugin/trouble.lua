local ok, _ = require('trouble')
if not ok then
	return
end

require('which-key').register({
	t = {
		name = "Trouble",
		t = { "<cmd>TroubleToggle<cr>", "Trouble: Toggle Diagnostics"},
		w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Trouble: Toggle Workspace Diagnostics"},
		d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Trouble: Toggle Document Diagnostics"},
		q = { "<cmd>TroubleToggle quickfix<cr>", "Trouble: Toggle Quickfix Diagnostics"},
		r = { "<cmd>TroubleToggle lsp_references<cr>", "Trouble: Toggle LSP References Diagnostics"},
	}
}, {
	prefix = '<localleader>',
	mode = 'n',
})
