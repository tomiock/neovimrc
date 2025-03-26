return {
	"theprimeagen/harpoon",
	branch = "harpoon2",
	-- Ensure you have plenary installed, as harpoon depends on it
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- Call setup with your original options
		harpoon:setup({
			global_settings = { tabline = true },
			menu = {
				width = vim.api.nvim_win_get_width(0) - 20,
			}
		})

		-- Define keymaps using the new API

		-- Add current file to the harpoon list
		vim.keymap.set('n', '<leader>ha', function() harpoon:list():add() end, {desc = '[A]dd file to harpoon list'})

		-- Navigate to the next file in the harpoon list
		vim.keymap.set('n', '<leader>hn', function() harpoon:list():next() end, {desc = '[N]ext file in harpoon list'})

		-- Navigate to the previous file in the harpoon list
		vim.keymap.set('n', '<leader>hp', function() harpoon:list():prev() end, {desc = '[P]revious file in harpoon list'})

		-- Toggle the quick menu (using your original keybind <C-s>)
		vim.keymap.set('n', '<C-s>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = 'Toggle Harpoon quick menu'})

		-- Navigate to specific files by index using C-<key>
		vim.keymap.set('n', '<C-h>', function () harpoon:list():select(1) end, {desc = 'Harpoon select file 1'})
		vim.keymap.set('n', '<C-j>', function () harpoon:list():select(2) end, {desc = 'Harpoon select file 2'})
		vim.keymap.set('n', '<C-k>', function () harpoon:list():select(3) end, {desc = 'Harpoon select file 3'})
		vim.keymap.set('n', '<C-l>', function () harpoon:list():select(4) end, {desc = 'Harpoon select file 4'})

		-- Navigate to specific files by index using M-<number>
		vim.keymap.set('n', '<M-1>', function () harpoon:list():select(1) end, {desc = 'Harpoon select file 1'})
		vim.keymap.set('n', '<M-2>', function () harpoon:list():select(2) end, {desc = 'Harpoon select file 2'})
		vim.keymap.set('n', '<M-3>', function () harpoon:list():select(3) end, {desc = 'Harpoon select file 3'})
		vim.keymap.set('n', '<M-4>', function () harpoon:list():select(4) end, {desc = 'Harpoon select file 4'})
		vim.keymap.set('n', '<M-5>', function () harpoon:list():select(5) end, {desc = 'Harpoon select file 5'})
		vim.keymap.set('n', '<M-6>', function () harpoon:list():select(6) end, {desc = 'Harpoon select file 6'})
		vim.keymap.set('n', '<M-7>', function () harpoon:list():select(7) end, {desc = 'Harpoon select file 7'})
		vim.keymap.set('n', '<M-8>', function () harpoon:list():select(8) end, {desc = 'Harpoon select file 8'})
		vim.keymap.set('n', '<M-9>', function () harpoon:list():select(9) end, {desc = 'Harpoon select file 9'})
		-- Note: Index 10 might be intended here for <M-0>
		vim.keymap.set('n', '<M-0>', function () harpoon:list():select(10) end, {desc = 'Harpoon select file 10'})
	end
}
