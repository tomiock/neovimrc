vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--  set hightlight on search
vim.o.hlsearch = false
vim.o.incsearch = true

-- make line number default
vim.wo.number = true

-- relative line numbers
vim.opt.relativenumber = true

-- undo tree to have access to long running undos
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "neovim/undodir"
vim.opt.undofile = true
-- save undo history
vim.o.undofile = true

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
vim.o.clipboard = 'unnamedplus'

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
vim.o.scrolloff = 8
vim.o.signcolumn = "yes"

-- color column
vim.o.colorcolumn = "100"

-- enable 24.bit color on terminal
vim.o.termguicolors = true

-- scroll options
vim.o.scrolloff = 8
vim.o.signcolumn = "yes"

-- color column
vim.o.colorcolumn = "100"

