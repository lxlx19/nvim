-- keybindings.lua
--
--Definir tecla leader como espaço
vim.g.mapleader = ' '

-- Mapeamento para copiar e colar no modo normal
vim.api.nvim_set_keymap('n', '<leader>c', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true })

-- Mapeamento para copiar e colar no modo visual
vim.api.nvim_set_keymap('v', '<leader>c', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', { noremap = true })

-- Atalho para salvar o arquivo
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })

-- Atalho para sair
vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap = true } )

-- Atalho para alternar para o modo de inserção
vim.api.nvim_set_keymap('n', '<leader>i', 'i', { noremap = true })

-- Atalho para alternar para o modo de comando
vim.api.nvim_set_keymap('n', '<leader>', ':', { noremap = true })

-- Atalho para fechar todas as janelas, exceto a atual
vim.api.nvim_set_keymap('n', '<leader>q', ':only<CR>', { noremap = true })

-- Atalho para alternar para a próxima janela
vim.api.nvim_set_keymap('n', '<leader>n', '<C-W><C-W>', { noremap = true })

-- Atalho para alternar para a janela à esquerda
vim.api.nvim_set_keymap('n', '<leader>h', '<C-W>h', { noremap = true })

-- Atalho para alternar para a janela à direita
vim.api.nvim_set_keymap('n', '<leader>l', '<C-W>l', { noremap = true })

-- Atalho para alternar para a janela acima
vim.api.nvim_set_keymap('n', '<leader>k', '<C-W>k', { noremap = true })

-- Atalho para alternar para a janela abaixo
vim.api.nvim_set_keymap('n', '<leader>j', '<C-W>j', { noremap = true })

