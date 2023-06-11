return {
	"utilyre/barbecue.nvim",
	name = "barbecue",
	version = "*",
	event = { "BufReadPost", "BufNewFile" },
	dependencies = {
		"SmiteshP/nvim-navic",
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		kinds = {
			Array = "",
			Boolean = "",
			Class = "",
			Color = "",
			Constant = "",
			Constructor = "",
			Enum = "",
			EnumMember = "",
			Event = "",
			Field = "",
			File = "󰈙",
			Folder = "󰉋",
			Function = "",
			Interface = "",
			Key = "",
			Keyword = "",
			Method = "",
			Module = "",
			Namespace = "",
			Null = "",
			Number = "",
			Object = "",
			Operator = "",
			Package = "",
			Property = "",
			Reference = "",
			Snippet = "",
			String = "",
			Struct = "",
			Text = "",
			TypeParameter = "",
			Unit = "",
			Value = "",
			Variable = "",
		},
	},
}
