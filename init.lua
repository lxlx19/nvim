-- Configuraçõe gerais
-- Habilita a sintaxe realçada
vim.cmd('syntax enable')
-- Habilita o reconhecimento automático do tipo de arquivo e as configurações de indentação
vim.cmd('filetype plugin indent on')


-- Configuração do Packer
vim.cmd([[packadd packer.nvim]])



-- Configurações de plugins usando o gerenciador de plugins Packer
require('plugins')

-- Configurações do Neovim
-- Codificação UTF-8
vim.o.encoding = 'utf-8'
-- Suporte a cores de terminal estendidas
vim.o.termguicolors = true
-- Habilita o uso do mouse em todos os modos
vim.o.mouse = 'a'
-- Compartilha a área de transferência com o sistema
vim.o.clipboard = 'unnamedplus'
-- Oculta arquivos modificados em buffers ocultos
vim.o.hidden = true
-- Abre novas janelas à direita
vim.o.splitright = true
-- Abre novas janelas abaixo
vim.o.splitbelow = true
-- Ignora caixa alta/letra minúscula ao pesquisar
vim.o.ignorecase = true
vim.o.smartcase = true
-- Realça os resultados das pesquisas enquanto digita
vim.o.incsearch = true
-- Habilita a indentação automática
vim.o.autoindent = true
-- Ativa a indentação inteligente
vim.o.smartindent = true
-- Define a largura da tabulação como 4 espaços
vim.o.tabstop = 4
-- Define a largura do recuo como 4 espaços
vim.o.shiftwidth = 4
-- Define a largura do recuo quando a tecla Tab é pressionada ou backspace é usado para apagar
vim.o.softtabstop = 4
-- Converte tabs em espaços
vim.o.expandtab = true
-- Exibe a linha de guias de tabs
vim.o.showtabline = 2
-- Exibe o número de linhas
vim.o.number = true
-- Exibe o número de linhas relativo à linha atual
vim.o.relativenumber = true
-- Realça a linha atual
vim.o.cursorline = true
-- Exibe a coluna de sinais, como mensagens de erro, ao lado do número da linha
vim.o.signcolumn = 'yes'
-- Define o tempo de atualização do Neovim em milissegundos
vim.o.updatetime = 300
-- Define a quantidade de linhas antes do final da janela para ativar a rolagem
vim.o.scrolloff = 8
-- Define a quantidade de colunas antes do início/fim da janela para ativar a rolagem horizontal
vim.o.sidescrolloff = 5
-- Desabilita a quebra de linha automática
vim.o.wrap = false

-- Mapeamentos de teclado
require('keymap')

-- Configurações específicas de plugins


-- Configuração de Temas
require('themes')

-- Configuração Barra de status
require('settings.statusline')

-- Configuração Nerdtree
require('settings.nerdtree')

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
require('lspconfig').pyright.setup{}


