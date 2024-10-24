vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")

vim.keymap.set("v", "<C-c>", "\"+y")

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

-- new plane to be opened on the right
vim.keymap.set("n", "<C-w>s", "<C-w>s<C-w>L")

vim.keymap.set("n", "<C-l>", "<C-w>l")
--vim.keymap.set("n", "<C-r>", "<C-w>r")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")

-- stupid
vim.api.nvim_set_keymap('n', '<leader>fmf', '<cmd>Surf<cr>', { noremap = true})


--           JUKIT REMAPS
--             -------
-- Send the current cell to the output split
vim.api.nvim_set_keymap('n', '<leader>x', ':call jukit#send#section(0)<CR>', { noremap = true, silent = true })

-- Send the current line to the output split
vim.api.nvim_set_keymap('n', '<c-CR>', ':call jukit#send#line()<CR>', { noremap = true, silent = true })

-- Send visually selected code to the output split
vim.api.nvim_set_keymap('v', '<c-CR>', ':<C-U>call jukit#send#selection()<CR>', { noremap = true, silent = true })

-- Execute all cells until the current cell
vim.api.nvim_set_keymap('n', '<leader>cc', ':call jukit#send#until_current_section()<CR>', { noremap = true, silent = true })

-- Execute all cells
vim.api.nvim_set_keymap('n', '<leader>all', ':call jukit#send#all()<CR>', { noremap = true, silent = true })

