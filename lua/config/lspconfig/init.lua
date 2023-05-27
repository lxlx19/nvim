---------------------------------------------------------
-- LSPCONFIG CONFIG -------------------------------------
---------------------------------------------------------


local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.pyright.setup{
    capabilities = capabilities,
    -- config adicionais aqui
    cmd = {"pyright-langserver", "--stdio"},
    filetypes = {"python", "py"},
    root_dir = function(fname)
        return lspconfig.util.find_git_ancestor(fname) or vim.loop.os_homedir()
        end,
        settings = {
            python = {
                analysis = {
                    autoSearchPaths = true,
                    useLibraryCodeForTypes = true,
                },
            },
            pyls = {
                configurationSources = {"flake8"},
                plugins = {
                    pycodestyle = {enabled = false},
                    pydocstyle = {enabled = false},
                    pylint = {enabled = false},
                    yapf = {enabled = false},
                    black = {enabled = true},
                    pylama = {enabled = true},
                    flake8 = {
                        enabled = true,
                        maxLineLength = 79,
                        ignore = {"E501"},
                    },
                },
                trace = {
                    server = "verbose",
                    client = "verbose",
                    },
                    },
                    },
}

lspconfig.lua_ls.setup{
    capabilities = capabilities,
    cmd = {"lua-language-server"},
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = vim.split(package.path, ';'),
            },
            diagnostics = {
                globals = {'vim'},
            },
            workspace = {
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
                },
            },
        },
    },
}
