return {
"kiyoon/jupynium.nvim",
build = "conda run --no-capture-output -n jupynium pip install .",

"rcarriga/nvim-notify",
"stevearc/dressing.nvim",

config = function()
	require("jupynium").setup({

	python_host = {"conda", "run", "--no-capture-output", "-n", "jupynium", "python"},

	default_notebook_URL = "http://localhost:8888/nbclassic",

	jupyter_command = "jupyter",

	notebook_dir = nil,

	firefox_profiles_ini_path = nil,

	firefox_profile_name = nil,

	auto_start_server = {
		enable = true,
		-- if you want to use a specific profile, set this to the profile name
		fire_pattern = { "*.ju.*", "*.ipynb" },
	},

	auto_attach_to_server = {
		enable = true,
		fire_pattern = { "*.ju.*", "*.md" },
	},

	auto_start_sync = {
		enable = false,
		fire_pattern = { "*.ju.*", "*.md" },
	},

	auto_download_ipynb = true,

	autoscroll = {
		enable = true,
		mode = "always",
		cell = {
			top_margin_percent = 20,
		},
	},

	jupynium_file_parttern = { "*.ju.*"},

	use_default_keybindings = true,
	textobjects = {
		use_default_keybindings = true,
	},

	syntax_highlight = {
		enable = true,
	},

	shortsighted = false,


	kernel_hover = {
		floating_win_opts = {
			max_width = 84,
			border = "none",
		},
	},
})

end,

}
