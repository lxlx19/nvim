-- Configuração do NERDTree
vim.api.nvim_set_keymap('n', '<F2>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.g.NERDTreeShowHidden = true  -- Exibir arquivos ocultos no NERDTree
vim.g.NERDTreeQuitOnOpen = 1     -- Fechar o NERDTree ao abrir um arquivo

-- Definir a fonte para suportar os ícones do NERDTree
vim.cmd([[let g:NERDTreeDirArrowExpandable = '▸']])
vim.cmd([[let g:NERDTreeDirArrowCollapsible = '▾']])
vim.cmd([[let g:NERDTreeIconGlyphPadding = 1]])

vim.cmd([[let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1]])
vim.cmd([[let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1]])




