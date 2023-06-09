local M = {}

M.opts = function()
	local dashboard = require("alpha.themes.dashboard")
	dashboard.section.header.val = {
		[[██╗     ██╗  ██╗███╗   ██╗██╗   ██╗██╗███╗   ███╗]],
		[[██║     ╚██╗██╔╝████╗  ██║██║   ██║██║████╗ ████║]],
		[[██║      ╚███╔╝ ██╔██╗ ██║██║   ██║██║██╔████╔██║]],
		[[██║      ██╔██╗ ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
		[[███████╗██╔╝ ██╗██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║]],
		[[╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝]],
		[[                github.com/lxlx19               ]],
	}
	dashboard.section.buttons.val = {
		dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>"),
		dashboard.button("n", " " .. " New file", ":ene <BAR> startinsert <CR>"),
		dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
		dashboard.button("g", " " .. " Find text", ":Telescope live_grep <CR>"),
		dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
		dashboard.button("s", " " .. " Restore Session", [[:lua require("persistence").load() <cr>]]),
		dashboard.button("l", "󰒲 " .. " Lazy", ":Lazy<CR>"),
		dashboard.button("h", "✔ " .. " Checkhealth", ":checkhealth<CR>"),
		dashboard.button("q", " " .. " Quit", ":qa<CR>"),
	}

	dashboard.section.footer.opts.hl = "Conceal"
	dashboard.section.header.opts.hl = "Title"
	dashboard.section.buttons.opts.hl = "Keyword"

	dashboard.opts.opts.noautocmd = true

	require("alpha").setup(dashboard.opts)

	vim.api.nvim_create_autocmd("User", {
		pattern = "LazyVimStarted",
		callback = function()
			local stats = require("lazy").stats()
			local v = vim.version()
			local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)

			local ft = string.format(
				"Neovim v%d.%d.%d | Took %.2f ms to load  %d of %d plugins",
				v.major,
				v.minor,
				v.patch,
				ms,
				stats.loaded,
				stats.count
			)

			dashboard.section.footer.val = ft

			pcall(vim.cmd.AlphaRedraw)
		end,
	})
end

return M
