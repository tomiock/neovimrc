vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")

-- dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("i", "jj", "<Esc>")

-- undo tree
vim.keymap.set('n', '<leader>u', '<cmd>UndotreeToggle<CR>')

-- neo tree
vim.keymap.set('n', '<leader>n', '<cmd>Neo<CR>', { desc = 'Open [N]eoTree' })

-- diagnostic
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diag' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open dia list' })
vim.keymap.set('n', '<M-CR>', vim.lsp.buf.code_action, { desc = 'Open Code Actions' })

-- cellular automaton
vim.keymap.set('n', '<leader>fmr', '<cmd>CellularAutomaton make_it_rain<CR>')
vim.keymap.set('n', '<leader>fml', '<cmd>CellularAutomaton game_of_life<CR>')
vim.keymap.set('n', '<leader>fms', '<cmd>CellularAutomaton scramble<CR>')

-- page down/up
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
