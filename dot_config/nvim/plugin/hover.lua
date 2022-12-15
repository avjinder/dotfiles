local ok, hover = pcall(require, "hover")
if not ok then
	return
end

hover.setup {
	init = function()
		require("hover.providers.lsp")
		require("hover.providers.man")
		require("hover.providers.dictionary")
	end,
	preview_window = false,
	title = true,
}

vim.keymap.set("n", "gk", hover.hover, { desc = "hover.nvim" })
vim.keymap.set("n", "gK", hover.hover_select, { desc = "hover.nvim (select)" })

