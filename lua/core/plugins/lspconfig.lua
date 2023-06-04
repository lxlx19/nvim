return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        { "folke/neoconf.nvim", cmd = "Neoconf", config = true },
        { "folke/neoconf.nvim", cmd = "Neoconf", config = true },
        "mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    opt = {
        diagnostics = {
            underline = true,
            update_in_insert = false,
            virtual_text = {
                spacing = 4,
                source = "if_many",
                prefix = "●",
            },
            severity_sort = true,
        },
        capabilities = {},
        autoformat = true,
        format_notify = false,
        format = {
            formatting_options = nil,
            timeout_ms = nil,
        },
        servers = {
            jsonls = {},
            lua_ls = {
                settings = {
                    Lua = {
                        workspace = {
                            checkThirdParty = false,
                        },
                        completion = {
                            callSnippet = "Replace"
                        },
                    },
                },
            },
            pyright = {
                settings = {
                    python = {
                        analysis = {
                            typeCheckingMode = "off",
                            useLibraryCodeForTypes = true,
                            diagnosticMode = "workspace",
                        },
                        linting ={
                            enabled = true,
                            pylintEnabled = true,
                            pylintArgs = { "--disable=C0111" },
                        },
                        formatting = {
                            provider = "black",
                            blackArgs = { "--line-length=120" },
                        },
                    },
                },
            },
        },
        setup = {
            -- config aqui
        },
    },
    config = function(_, opts)
    local Util = require("config.util")
    -- setup autoformat
    require("config.lspformat").setup(opts)
    -- setup formatting and keymaps
    Util.on_attach(function(client, buffer)
      require("config.lspkeymap").on_attach(client, buffer)
    end)
  end,
}



