local ok, n = pcall(require, 'notify')
if not ok then
	return
end

n.setup {
	max_width = 80,
}

-- require('which-key').register({
-- 	d = { '<cmd>lua vim.notify.dismiss()<cr>', "Dismiss all notificatioons"},
-- }, { prefix = '<localleader>', mode = 'n'})

vim.keymap.set('n', '<localleader>d', '<cmd>lua vim.notify.dismiss()<cr>', {desc = "Dismiss Notifications"})
