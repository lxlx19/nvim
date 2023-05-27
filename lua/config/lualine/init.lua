--------------------------------------------------------
-- LUALINE ---------------------------------------------
--------------------------------------------------------

local lualine = require('lualine')

--------------------------------------------------------
-- Config ----------------------------------------------
--------------------------------------------------------
lualine.setup{
    options = {
        icons_enabled = true,
        theme = 'gruvbox',
        component_separators = {'', ''},
        section_separators = {'', ''},
        always_divide_middle = false,
        globalstatus = true,
        disabled_filetypes = {},
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        },
    },
    sections = {
        lualine_a = {{'mode', icons_enabled = true, icon = ''}},
        lualine_b = {'branch', 'diff'},
        lualine_c = {
            {
                'filename',
                file_status = true,
                path = 1,
                symbols = {modified = ' ', readonly = ' '},
            },
        },
        lualine_x = {
            {
                'diagnostics',
                sources = {'nvim_lsp'},
                sections = {'error', 'warn', 'info', 'hint'},
                symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
            },
            'encoding',
            'fileformat',
            'filetype',
        },
        lualine_y = {'progress'},
        lualine_z = {'location'},
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
            {'filename',
            file_status = true,
            path = 1,
            symbols = {modified = ' ', readonly = ' '}
            }
        },
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {},
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},


    }

