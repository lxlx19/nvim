return {
	{
		"ellisonleao/gruvbox.nvim",
		lazy = true,
		priority = 1000,
	},

	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
	},
}
