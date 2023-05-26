---------------------------------------------------------
-- TREESITTER CONFIG ------------------------------------
---------------------------------------------------------
require('nvim-treesitter.configs').setup {
    ensure_installed = {"lua", "vim", "query", "python", "json"},
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
    -- Configuração específica para cada linguagem
    lua = {
        enable = true,
    },
    python = {
        enable = true,
    },
    json = {
        enable = true,
    },
}
