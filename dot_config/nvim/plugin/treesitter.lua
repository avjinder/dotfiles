local ok, treesitter = pcall(require, "nvim-treesitter-configs")

if not ok then
	return
end

treesitter.setup {
	ensure_installed = "all",
	auto_install = true,
	highlight = { enable = true },
	indent = { enable = true },
}

