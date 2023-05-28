---------------------------------------------------------
-- TREESITTER CONFIG ------------------------------------
---------------------------------------------------------
local ts = require('nvim-treesitter.configs')

---------------------------------------------------------
-- Setup ------------------------------------------------
---------------------------------------------------------
ts.setup {
    auto_install = true,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = 'gnn',
            node_incremental = 'grn',
            scope_incremental = 'grc',
            node_decremental = 'grm',
            scope_decremental = 'grd',
        },
    },
    refactor = {
        smart_rename = {
            enable = true,
            keymaps = {
                smart_rename = 'grr',
            },
        },
        highlight_definitions = {
            enable = true,
        },
    },
    textsubjects = {
        enable = true,
        keymaps = {
            ['.'] = 'textsubjects-smart',
            [';'] = 'textsubjects-container-outer',
            [';i'] = 'textsubjects-container-inner',
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner',
            ['al'] = '@loop.outer',
            ['il'] = '@loop.inner',
            ['ab'] = '@block.outer',
            ['ib'] = '@block.inner',
            ['ir'] = '@parameter.inner',
            ['ar'] = '@parameter.outer',
        },
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
