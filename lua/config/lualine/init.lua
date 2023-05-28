--------------------------------------------------------
-- LUALINE ---------------------------------------------
--------------------------------------------------------
local function current_buffer_number()
    return "﬘ " .. vim.api.nvim_get_current_buf()
end

local function diff_source()
    local branch_sign = ''
    local git_info = vim.b.gitsigns_status_dict
    if not git_info or git_info.head == '' then
        return ''
    end
    local added = git_info.added and ('+' .. git_info.added .. ' ') or ''
    local modified = git_info.changed and ('~' .. git_info.changed .. ' ') or ''
    local removed = git_info.removed and ('-' .. git_info.removed .. ' ') or ''
    local pad = ((added ~= '') or (removed ~= '') or (modified ~= '')) and ' ' or ''
    local diff_str = string.format('%s%s%s%s', added, removed, modified, pad)
     return string.format('%s%s %s ', diff_str, branch_sign, git_info.head)
end


local function current_date()
    local date = os.date("%d.%m.%y %H:%M")
    return date
    end


local function treesitter_status()
  local parsers = vim.tbl_keys(vim.treesitter.status())
  return table.concat(parsers, ", ")
end


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


local custom_auto = require "lualine.themes.auto"
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
      { "b:gitsigns_head", color = { fg = "#4aa6ff" }, icon = { "", color = { fg = "#f2891c" } } },
      { "diff", source = diff_source() },
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

