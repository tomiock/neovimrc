return {
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,

		config = function()
			require("cyberdream").setup({

				transparent = true,
				terminal_colors = true,
				borderless_telescope = true,

				theme = {
					highlights = {
						-- Highlight groups to override, adding new groups is also possible
						-- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

						-- Example:
						Comment = { fg = "#696969", bg = "NONE", italic = false },

						-- Complete list can be found in `lua/cyberdream/theme.lua`
					},

					-- Override default colors
					colors = {
						green = "#00ff00",
					},

					-- Disable or enable colorscheme extensions
					extensions = {
						telescope = true,
						notify = true,
						mini = true,
					},
				},
			})

			vim.cmd("colorscheme cyberdream")
		end,

	},
}
