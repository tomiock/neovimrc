return {
	{
		"nvim-lua/plenary.nvim",
		name = "plenary"
	},

	"github/copilot.vim",
	"eandrju/cellular-automaton.nvim",
	"gpanders/editorconfig.nvim",
	"mbbill/undotree",
	"nvim-treesitter/nvim-treesitter-textobjects",

	-- git plugins from tpope
	"tpope/vim-fugitive",
	"tpope/vim-rhubarb",

	-- which key folke
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeoutlen = 300
			vim.timeout = true
		end,
		opts = {},
	},

	{ 'wakatime/vim-wakatime', lazy = false },

	{
		"NStefan002/visual-surround.nvim",
		config = function()
			require("visual-surround").setup({
				vim.keymap.set("v", "s<", function()
					-- surround selected text with "<>"
					require("visual-surround").surround("<") -- it's enough to supply only opening or closing char
				end)
			})
		end,
	},


	-- detect tabstop and shiftwidth automatically
	"tpope/vim-sleuth",

	"christoomey/vim-tmux-navigator",

	{
		"lukas-reineke/indent-blankline.nvim",
		main = 'ibl',
		opts = {},
	},

	"ThePrimeagen/vim-be-good",

	{
		'fpeterek/nvim-surfers',
		config = function()
			require('nvim-surfers').setup({
				use_tmux = true,
			})
		end
	},

	{
		'rmagatti/auto-session',
		lazy = false,
		dependencies = {
			'nvim-telescope/telescope.nvim', -- Only needed if you want to use session lens
		},

		---enables autocomplete for opts
		---@module "auto-session"
		---@type AutoSession.Config
		opts = {
			suppressed_dirs = { '~/', '~/Downloads', '/' },
			-- log_level = 'debug',
		}
	},

	--[[	
	{
		'vim-jukit',
		dir = '~/dev/jukit/vim-jukit/',
	},
	--]]

	{
		"geg2102/nvim-python-repl",
		dependencies = "nvim-treesitter",
		ft = { "python" },
		config = function()
			require("nvim-python-repl").setup({
				execute_on_send = true,
				vsplit = true,
				spawn_command = {
					python = "ipython",
				}
			})
		end
	},

	{
		'geg2102/nvim-jupyter-client',
		config = function()
			require('nvim-jupyter-client').setup({
				template = {
					cells = {
						{
							cell_type = "code",
							execution_count = nil,
							metadata = {},
							outputs = {},
							source = { "# Custom template cell\n" }
						}
					},
					metadata = {
						kernelspec = {
							display_name = "Python 3",
							language = "python",
							name = "python3"
						}
					},
					nbformat = 4,
					nbformat_minor = 5
				},
				cell_highlight_group = "CurSearch", --whatever you want here
				-- If custom highlight group then set these manually
				highlights = {
					cell_title = {
						fg = "#ffffff",
						bg = "#000000",
					}
				}
			})
		end
	}
}
