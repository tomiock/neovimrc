return {
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,

		config = function()
			require("cyberdream").setup({

				transparent = true,
				terminal_colors = true,
				borderless_telescope = false,

				theme = {
					-- Override a highlight group entirely using the color palette
					overrides = function(colors) -- NOTE: This function nullifies the `highlights` option
						-- Example:
						return {
							Keyword = { fg = "#ff73ff", bg = "NONE", bold = false },
							Number = { fg = "#b0d7ff", bg = "NONE", bold = false },
							Boolean = { fg = "#b0d7ff", bg = "NONE", bold = false },
							PreProc = { fg = "#b0d7ff", bg = "NONE", bold = false },
							parameter = { fg = "#ff00ff", bg = "NONE", bold = false },

							DiagnosticVirtualTextBad = { fg = "#a4ad3d", bg = "NONE", bold = false },
							DiagnosticVirtualTextWarn = { fg = "#a4ad3d", bg = "NONE", bold = false },
							DiagnosticVirtualTextHint = { fg = "#368e96", bg = "NONE", bold = false },
						}
					end,

					-- Override default colors
					colors = {
						green = "#61ffca",
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
