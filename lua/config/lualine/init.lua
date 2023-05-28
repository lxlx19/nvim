--------------------------------------------------------
-- LUALINE ---------------------------------------------
--------------------------------------------------------

--------------------------------------------------------
-- Current buffer number -------------------------------
--------------------------------------------------------
local function current_buffer_number()
    return "﬘ " .. vim.api.nvim_get_current_buf()
end
--------------------------------------------------------
-- Current date ----------------------------------------
--------------------------------------------------------
local function current_date()
    local date = os.date("%d.%m.%y %H:%M")
    return date
    end
--------------------------------------------------------
-- Treesitter status -----------------------------------
--------------------------------------------------------
local function treesitter_status()
  local parsers = vim.tbl_keys(vim.treesitter.status())
  return table.concat(parsers, ", ")
end
--------------------------------------------------------
-- LSP status ------------------------------------------
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
--------------------------------------------------------
-- Custom theme ----------------------------------------
--------------------------------------------------------
local custom_auto = require ("lualine.themes.auto")
--custom_auto.terminal.a.bg = "#1e90ff"
custom_auto.normal.a.bg = "#131313"
custom_auto.normal.a.fg = "#6d7275"
custom_auto.normal.c.fg = "#E2E5DC"
custom_auto.normal.c.bg = "#131313"
custom_auto.insert.c.fg = "#51A266"
custom_auto.insert.a.bg = "#51A266"
custom_auto.command.a.bg = "#1e90ff"
custom_auto.command.b.fg = "#1e90ff"
custom_auto.replace.a.bg = "#C83434"
custom_auto.visual.a.bg = "#725191"
custom_auto.visual.b.fg = "#1e90ff"

--------------------------------------------------------
-- Lualine setup ---------------------------------------
--------------------------------------------------------
require("lualine").setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = { left = ' ', right = ' ' },
    section_separators = { left = " ", right = " " },
    disabled_filetypes = {},
    always_divide_middle = false,
    globalstatus = true,
  },
  sections = {
    lualine_a = {{ "mode", icon_enabled = true, icon = { "", color = { fg = "#1e90ff" } } } },
    lualine_b = {
            { "branch", color = { fg = "4aa6ff"}, icon = { "", color = { fg = "#f2891c" } } },
            { "diff",
                color_added = "#51A266",
                color_modified = "#f2891c",
                color_removed = "#C83434",
                symbols = {
                    added = " ",
                    modified = " ",
                    removed = " "
                }
            },
        },
    lualine_c = {
        { current_buffer_number, color = { fg = "#A9A9A9" } },
        { "filename", path = 4, symbols = { modified = " ", readonly = " " } },
        { treesitter_status, color = { fg = "#51A266" }, icon = { "", color = { fg = "#51A266" } } },
        { lsp_status, color = { fg = "#51A266" } , icon = { "", color = { fg = "#51A266" } } },
        { "diagnostics", sources = { "nvim_diagnostic" } },
    },
    lualine_x = {
            { "filetype", icon_only = true },
            { "encoding", icon_only = true },
            { "fileformat", icon_only = true, color = { fg = "#A9A9A9"} },
        },
    lualine_y = {
        { current_date, color = { fg = "#A9A9A9" } },
    },
    lualine_z = {
            { "progress", color = { fg = "#6d7275", bg = "#131313" } },
            { "location", color = { fg = "#6d7275", bg = "#131313" } },
        },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { { "filename", path = 1, symbols = { modified = "[]", readonly = " " } } },
    lualine_x = { "location" },
    lualine_y = { { current_buffer_number, color = { fg = "#A9A9A9" } } },
    lualine_z = {},
  },
  extensions = {},
}

