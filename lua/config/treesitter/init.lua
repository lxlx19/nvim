---------------------------------------------------------
-- TREESITTER CONFIG ------------------------------------
---------------------------------------------------------
local ts = require('nvim-treesitter.configs')

-- Python -----------------------------------------------
ts.setup {
    ensure_installed = 'python',
    highlight = {
        enable = true,
        use_languagetree = true
    },
}

-- Lua --------------------------------------------------
ts.setup {
    ensure_installed = 'lua',
    highlight = {
        enable = true,
        use_languagetree = true
    },
}

-- Json -------------------------------------------------
ts.setup {
    ensure_installed = 'json',
    highlight = {
        enable = true,
        use_languagetree = true
    },
}
