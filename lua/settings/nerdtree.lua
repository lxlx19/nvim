-- Configuração do NERDTree
vim.api.nvim_set_keymap('n', '<leader>t', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':NERDTreeRefreshRoot<CR>', { noremap = true, silent = true })
 -- Mais configurações do nerdtree com explicação
vim.g.NERDTreeShowHidden = true  -- Exibir arquivos ocultos no NERDTree
vim.g.NERDTreeQuitOnOpen = 1     -- Fechar o NERDTree ao abrir um arquivo
-- vim.g.NERDTreeMinimalUI = 1      -- Exibir apenas o NERDTree
vim.g.NERDTreeDirArrows = 1      -- Exibir setas para diretórios
--vim.g.NERDTreeDirArrowExpandable = '▸' -- Símbolo para diretórios expandidos
--vim.g.NERDTreeDirArrowCollapsible = '▾' -- Símbolo para diretórios contraídos
vim.g.NERDTreeWinSize = 30        -- Tamanho da janela do NERDTree
vim.g.NERDTreeWinPos = 'left'     -- Posição da janela do NERDTree
-- vim.g.NERDTreeShowLineNumbers = 1 -- Exibir números de linha no NERDTree
-- vim.g.NERDTreeIgnore = {'.git', '.DS_Store', '.vscode', '.idea', '.sass-cache', 'node_modules'} -- Arquivos a serem ignorados pelo NERDTree
-- vim.g.NERDTreeStatusline = ''     -- Desabilitar statusline do NERDTree
-- vim.g.NERDTreeAutoDeleteBuffer = 1 -- Fechar o buffer ao fechar o arquivo
-- vim.g.NERDTreeAutoCenter = 1      -- Centralizar o NERDTree ao abrir um arquivo
vim.g.NERDTreeMouseMode = 2       -- Habilitar navegação com o mouse
vim.g.NERDTreeShowBookmarks = 1   -- Exibir marcadores no NERDTree




