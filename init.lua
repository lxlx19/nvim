---------------------------------------------------------
-- CONFIGURAÇÕES GERAIS E IMPORTAÇÃO DE MÓDULOS ---------
---------------------------------------------------------


---------------------------------------------------------
-- Importação de Módulos --------------------------------
---------------------------------------------------------
require('plugins')
require('keymap')
require('themes')
require('settings.statusline')
require('settings.tree')

---------------------------------------------------------
-- Configuração do Packer -------------------------------
---------------------------------------------------------
vim.cmd([[packadd packer.nvim]])

---------------------------------------------------------
-- Configuraçõe gerais ----------------------------------
---------------------------------------------------------
vim.cmd('syntax enable') 
vim.cmd('filetype plugin indent on')
vim.o.encoding = 'utf-8'
vim.o.termguicolors = true
vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.o.hidden = true
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.showtabline = 2
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 300
vim.o.scrolloff = 8
vim.o.sidescrolloff = 5
vim.o.wrap = false

---------------------------------------------------------
-- Configurações de plugins -----------------------------
---------------------------------------------------------

-- Configuração do Mason
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- Configuração do Treesitter
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

-- Toggle Terminal
require('toggleterm').setup{
  open_mapping = [[<F7>]],  -- Define o atalho para abrir o terminal usando F7
  hide_numbers = true,  -- Oculta os números das janelas do terminal
  shade_terminals = false,  -- Desativa o sombreamento da área ao redor do terminal
}

-- Configuração LSPconfig
local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig').pyright.setup{
    capabilities = capabilities,
}

-- Configuração do Notify
vim.notify = require('notify')
require('notify').setup({
    stages = "fade_in_slide_out",
    timeout = 3000,
    background_colour = "#000000",
    icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
    },
})
