return {
	{
		"nvim-lua/plenary.nvim",
		name = "plenary"
	},

	"github/copilot.vim",
	"eandrju/cellular-automaton.nvim",
	"gpanders/editorconfig.nvim",
	"mbbill/undotree",

	-- git plugins from tpope
	"tpope/vim-fugitive",
	"tpope/vim-rhubarb",

	-- which key folke
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function ()
			vim.o.timeoutlen = 300
			vim.timeout = true
		end,
		opts = {},
	},

	{ 'wakatime/vim-wakatime', lazy = false },


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
}
