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

-- * Nvim Pane Navigation: Ctrl + up/down/right/left
vim.keymap.set("n", "<M-h>", "<C-w>h")     -- h - Navigate Right
vim.keymap.set("n", "<M-j>", "<C-w>j")     -- j - Navigate Down
vim.keymap.set("n", "<M-k>", "<C-w>k")       -- k - Navigate Up
vim.keymap.set("n", "<M-l>", "<C-w>l")    -- l - Navigate Left

-- python repl
vim.keymap.set("n", "<c-P>", function() require('nvim-python-repl').open_repl() end, { desc = "Opens the REPL in a window split"})
vim.keymap.set("n", "<leader>x", function() require('nvim-python-repl').send_statement_definition() end, { desc = "Send semantic unit to REPL"})
vim.keymap.set("v", "<leader>x", function() require('nvim-python-repl').send_visual_to_repl() end, { desc = "Send visual selection to REPL"})
vim.keymap.set("n", "<leader>pa", function() require('nvim-python-repl').send_buffer_to_repl() end, { desc = "Send entire buffer to REPL"})
vim.keymap.set("n", "<leader>pe", function() require('nvim-python-repl').toggle_execute() end, { desc = "Automatically execute command in REPL after sent"})
vim.keymap.set("n", "<leader>pc", function() require('nvim-python-repl').send_current_cell_to_repl() end, { desc = "Sends the cell under cursor to repl"})

-- Add cells
vim.keymap.set("n", "<leader>jo", "<cmd>JupyterAddCellBelow<CR>", { desc = "Add Jupyter cell below" })
vim.keymap.set("n", "<leader>jO", "<cmd>JupyterAddCellAbove<CR>", { desc = "Add Jupyter cell above" })

-- Cell operations
vim.keymap.set("n", "<leader>jd", "<cmd>JupyterRemoveCell<CR>", { desc = "Remove current Jupyter cell" })
vim.keymap.set("n", "<leader>jm", "<cmd>JupyterMergeCellAbove<CR>", { desc = "Merge with cell above" })
vim.keymap.set("n", "<leader>jM", "<cmd>JupyterMergeCellBelow<CR>", { desc = "Merge with cell below" })
vim.keymap.set("n", "<leader>jt", "<cmd>JupyterConvertCellType<CR>", { desc = "Convert cell type (code/markdown)" })
vim.keymap.set("v", "<leader>jm", "<cmd>JupyterMergeVisual<CR>", { desc = "Merge selected cells" })
vim.keymap.set("n", "<leader>jD", "<cmd>JupyterDeleteCell<CR>", { desc = "Delete cell under cursor and store in register" })

local hardmode = false
if hardmode then
    -- Show an error message if a disabled key is pressed
    local msg = [[<cmd>echohl Error | echo "KEY DISABLED" | echohl None<CR>]]

    -- Disable arrow keys in insert mode with a styled message
    vim.api.nvim_set_keymap('i', '<Up>', '<C-o>' .. msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('i', '<Down>', '<C-o>' .. msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('i', '<Left>', '<C-o>' .. msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('i', '<Right>', '<C-o>' .. msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('i', '<Del>', '<C-o>' .. msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('i', '<BS>', '<C-o>' .. msg, { noremap = true, silent = false })

    -- Disable arrow keys in normal mode with a styled message
    vim.api.nvim_set_keymap('n', '<Up>', msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('n', '<Down>', msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('n', '<Left>', msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('n', '<Right>', msg, { noremap = true, silent = false })
    vim.api.nvim_set_keymap('n', '<BS>', msg, { noremap = true, silent = false })
end
