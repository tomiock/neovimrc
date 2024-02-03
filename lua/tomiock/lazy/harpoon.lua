return {
	"theprimeagen/harpoon",
	 -- require("telescope").load_extension("harpoon"),
	config = function()
		require("harpoon").setup({
		global_settings = { tabline = true },
		menu = {
			width = vim.api.nvim_win_get_width(0) - 20,
			}
		})

local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>ha', mark.add_file, {desc = '[A]add file to harpoon list'})
vim.keymap.set('n', '<leader>hr', mark.remove_empty_tail, {desc = 'dont know what it does'})
vim.keymap.set('n', '<leader>hn', ui.nav_next, {desc = '[N]ext file in harpoon list'})
vim.keymap.set('n', '<leader>hp', ui.nav_prev, {desc = '[P]revious file in harpoon list'})

vim.keymap.set('n', '<C-s>', ui.toggle_quick_menu)

vim.keymap.set('n', '<C-h>', function () ui.nav_file(1) end)
vim.keymap.set('n', '<C-j>', function () ui.nav_file(2) end)
vim.keymap.set('n', '<C-k>', function () ui.nav_file(3) end)
vim.keymap.set('n', '<C-l>', function () ui.nav_file(4) end)

-- keymaps with ALT
vim.keymap.set('n', '<M-1>', function () ui.nav_file(1) end)
vim.keymap.set('n', '<M-2>', function () ui.nav_file(2) end)
vim.keymap.set('n', '<M-3>', function () ui.nav_file(3) end)
vim.keymap.set('n', '<M-4>', function () ui.nav_file(4) end)
vim.keymap.set('n', '<M-5>', function () ui.nav_file(5) end)
vim.keymap.set('n', '<M-6>', function () ui.nav_file(6) end)
vim.keymap.set('n', '<M-7>', function () ui.nav_file(7) end)
vim.keymap.set('n', '<M-8>', function () ui.nav_file(8) end)
vim.keymap.set('n', '<M-9>', function () ui.nav_file(9) end)
vim.keymap.set('n', '<M-0>', function () ui.nav_file(10) end)
	end
}
