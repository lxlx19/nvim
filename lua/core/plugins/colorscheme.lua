return {
	{
		"ellisonleao/gruvbox.nvim",
		lazy = true,
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = true,
					comments = true,
					operators = true,
					fold = true,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true,
				contrast = "soft",
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_background = true,
				transparent_mode = true,
			})
		end,
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

	{
		"uloco/bluloco.nvim",
		lazy = false,
		priority = 1000,
		dependencies = { "rktjmp/lush.nvim" },
		config = function()
			-- your optional config goes here, see below.
			require("bluloco").setup({
				style = "auto", -- "auto" | "dark" | "light"
				transparent = true,
				italics = true,
				terminal = vim.fn.has("gui_running") == 1, -- bluoco colors are enabled in gui terminals per default.
				guicursor = true,
			})
		end,
	},
}
