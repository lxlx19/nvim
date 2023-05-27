---------------------------------------------------------
-- TREESITTER CONFIG ------------------------------------
---------------------------------------------------------
local ts = require('nvim-treesitter.configs')

-- Setup ------------------------------------------------
ts.setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        'markdown',
        'markdown_inline',
        'dockerfile',
        'html',
        'javascript',
        'json',
        'lua',
        'python',
        'regex',
        'rust',
        'toml',
        'tsx',
        'typescript',
        'yaml',
    },
    autotag = {
        enable = true,
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
    },
}
