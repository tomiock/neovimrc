return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { 'c', 'cpp', 'lua', 'python', 'rust', 'bash', 'json', 'html', 'css', 'yaml', 'go', 'vim', 'latex', 'templ', 'json', 'asm' },

			auto_install = true,
			sync_install = false,
			ignore_install = {},

			-- modules
			modules = {},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = { enable = true },
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = '<c-space>',
					node_incremental = '<c-space>',
					scope_incremental = '<c-s>',
					node_decremental = '<M-space>',
				},
			},
			textobjects = {
				select = {
					enable = true,
					lookhead = true, -- Automatically jump forward to textobj, similar to targets.vim
					keymaps = {
						['aa'] = '@parameter.outer',
						['ia'] = '@parameter.inner',
						['af'] = '@function.outer',
						['if'] = '@function.inner',
						['ac'] = '@class.outer',
						['ic'] = '@class.inner',
					},
				},
				move = {
					enable = true,
					set_jumps = true, -- whether to set jumps in the jumplist
					goto_next_start = {
						[']m'] = '@function.outer',
						[']]'] = '@function.inner',
					},
					goto_next_end = {
						[']M'] = '@function.outer',
						[']['] = '@function.inner',
					},
					goto_previous_start = {
						['[m'] = '@function.outer',
						['[['] = '@function.inner',
					},
					goto_previous_end = {
						['[M'] = '@function.outer',
						['[]'] = '@function.inner',
					},
				},
				swap = {
					enable = true,
					swap_next = {
						['<leader>a'] = '@parameter.inner',
					},
					swap_previous = {
						['<leader>A'] = '@parameter.inner',
					},
				},
			},


		})
	end,

	vim.filetype.add({
		extension = {
			templ = 'templ',
			htmx = 'html',
		},
	})
}
