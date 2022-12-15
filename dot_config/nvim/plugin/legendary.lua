local ok, legendary = pcall(require, "legendary")
if not ok then
	return
end

legendary.setup {
	keymaps = {
		{ '<leader>L', '<cmd>Legendary<cr>', description = "Open Legendary" }
	},
	which_key = {
		auto_register = true,
		do_bindings = true,
	},
}
