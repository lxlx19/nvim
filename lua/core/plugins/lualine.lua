--------------------------------------------------------
---< LSP status >---------------------------------------
--------------------------------------------------------
local function lsp_status()
	local connected_clients = vim.lsp.get_active_clients()
	if #connected_clients > 0 then
		local client_names = {}
		for _, client in ipairs(connected_clients) do
			table.insert(client_names, client.name)
		end
		return table.concat(client_names, ", ")
	end
	return ""
end

return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	opts = function()
		local Util = require("config.util")
		return {
			options = {
				icons_enabled = true,
				theme = "auto",
				component_separators = { left = " ", right = " " },
				section_separators = { left = " ", right = " " },
				disabled_filetypes = { statusline = { "alpha" } },
				always_divide_middle = false,
				globalstatus = true,
			},
			sections = {
				lualine_a = { { "mode", icon_enabled = true, icon = { "", color = { fg = "#1e90ff" } } } },
				lualine_b = {
					{ "branch", color = { fg = "4aa6ff" }, icon = { "", color = { fg = "#f2891c" } } },
					{
						"diff",
						color_added = "#51A266",
						color_modified = "#f2891c",
						color_removed = "#C83434",
						symbols = {
							added = " ",
							modified = " ",
							removed = " ",
						},
					},
				},
				lualine_c = {
					{ "diagnostics", sources = { "nvim_diagnostic" } },
					{ lsp_status, color = { fg = "#51A266" }, icon = { "", color = { fg = "#51A266" } } },
					{ "lsp_progress", color = { fg = "#51A266" } },
				},
				lualine_x = {
					{ "filetype", icon_only = true },
					{ "filename", path = 1, symbols = { modified = " ", readonly = " " } },
					{ "encoding", icon_only = true },
					{ "fileformat", icon_only = true, color = { fg = "#A9A9A9" } },
				},
				lualine_y = {
					function()
						return " " .. os.date("%R")
					end,
				},
				lualine_z = {
					{ "progress", color = { fg = "#6d7275", bg = "#131313" } },
					{ "location", color = { fg = "#6d7275", bg = "#131313" } },
				},
			},
			extensions = {},
		}
	end,
}
