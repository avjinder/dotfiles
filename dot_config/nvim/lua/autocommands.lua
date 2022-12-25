vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
	pattern = "*.rs",
	command = ":lua vim.keymap.set('n', '<leader>r', '<cmd>!cargo run -q<cr>')"
	}
)

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
	pattern = "*.go",
	command = ":lua vim.keymap.set('n', '<leader>r', '<cmd>GoRun<cr>')"
	}
)

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
	pattern = "*.ts",
	command = ":lua vim.keymap.set('n', '<leader>r', '<cmd>!npx ts-node %<cr>')"
})


vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
	pattern = "*.lua",
	command = "lua vim.keymap.set('n', '<leader>r', '<cmd>luafile %<cr>')"
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
	pattern = "*.sh",
	command = "lua vim.keymap.set('n', '<leader>r', '<cmd>!bash %<cr>')"
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
	pattern = "*.py",
	command = "lua vim.keymap.set('n', '<leader>r', '<cmd>!python3 %<cr>')"
})

vim.api.nvim_create_autocmd({"BufEnter", "BufWinEnter"}, {
	pattern = "*.md",
	command = "lua vim.keymap.set('n', '<leader>r', '<cmd>Glow<cr>')"
})
