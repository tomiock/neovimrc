vim.opt.guicursor = ''

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--  set hightlight on search
vim.o.hlsearch = true
vim.o.incsearch = true

-- make line number default
vim.wo.number = true

-- relative line numbers
vim.opt.relativenumber = true

-- undo tree to have access to long running undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/neovim/undodir"
vim.opt.undofile = true
-- save undo history
vim.o.undofile = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- enable mouse mode
-- 	n normal mode
-- 	c command-line mode
-- 	i insert mode
-- 	v visual mode
-- 	h all previous modes when editing help file
-- 	a all previous modes
-- 	r for hit-enter and more-prompt
vim.o.mouse = 'h'

-- clipboard `:help clipboard`
-- vim.o.clipboard = 'unnamedplus'

-- enable break indent
vim.o.breakindent = true

-- case-insensitive search unless \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- keep column on by default
vim.wo.signcolumn = 'yes'

-- decrease update time
vim.o.updatetime = 250 -- ms to auto save when nothing is typed
vim.o.timeoutlen = 300

-- set completeopt to have better completion experience
vim.o.compleopt = 'menuone,noselect'

-- enable 24.bit color on terminal
vim.o.termguicolors = true

-- scroll options
vim.o.scrolloff = 10
vim.o.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- color column
vim.o.colorcolumn = "100"

-- highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
