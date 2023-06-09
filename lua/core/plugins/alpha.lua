local conf = require("config.alphacf")

return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = conf.opts,
}
