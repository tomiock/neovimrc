vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")

vim.keymap.set("v", "<C-c>", "\"+y")

-- dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

vim.keymap.set("i", "jj", "<Esc>")

vim.keymap.set("n", "<M-\\>", "<C-\\><c-N>")

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

-- * Nvim Pane Navigation: Ctrl + up/down/right/left
vim.keymap.set("n", "<M-h>", "<C-w>h")     -- h - Navigate Right
vim.keymap.set("n", "<M-j>", "<C-w>j")     -- j - Navigate Down
vim.keymap.set("n", "<M-k>", "<C-w>k")       -- k - Navigate Up
vim.keymap.set("n", "<M-l>", "<C-w>l")    -- l - Navigate Left

-- python repl
vim.keymap.set("n", "<leader>p", function() require('nvim-python-repl').send_statement_definition() end, { desc = "Send semantic unit to REPL"})
vim.keymap.set("v", "<leader>pv", function() require('nvim-python-repl').send_visual_to_repl() end, { desc = "Send visual selection to REPL"})
vim.keymap.set("n", "<leader>pa", function() require('nvim-python-repl').send_buffer_to_repl() end, { desc = "Send entire buffer to REPL"})
vim.keymap.set("n", "<leader>pe", function() require('nvim-python-repl').toggle_execute() end, { desc = "Automatically execute command in REPL after sent"})
--vim.keymap.set("n", [your keymap], function() require('nvim-python-repl').toggle_vertical() end, { desc = "Create REPL in vertical or horizontal split"})
vim.keymap.set("n", "<c-P>", function() require('nvim-python-repl').open_repl() end, { desc = "Opens the REPL in a window split"})
vim.keymap.set("n", "<leader>pc", function() require('nvim-python-repl').send_current_cell_to_repl() end, { desc = "Sends the cell under cursor to repl"})
