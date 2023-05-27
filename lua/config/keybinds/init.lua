--------------------------------------------------------------
-- KEYBINDS CONFIG -------------------------------------------
--------------------------------------------------------------

--------------------------------------------------------------
-- LEADER KEY ------------------------------------------------
--------------------------------------------------------------
vim.g.mapleader = ' '

--------------------------------------------------------------
-- COPY AND PASTE --------------------------------------------
--------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<leader>c', '"+y', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>c', '"+y', { noremap = true })
vim.api.nvim_set_keymap('v', '<leader>p', '"+p', { noremap = true })

--------------------------------------------------------------
-- SAVE AND QUIT ---------------------------------------------
--------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-q>', ':q<CR>', { noremap = true })

--------------------------------------------------------------
-- COMMAND MODE ----------------------------------------------
--------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<leader><leader>', ':', { noremap = true })

--------------------------------------------------------------
-- TABS ------------------------------------------------------
--------------------------------------------------------------  
vim.api.nvim_set_keymap('n', '<leader>q', ':only<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>n', '<C-W><C-W>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>h', '<C-W>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>l', '<C-W>l', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>k', '<C-W>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>j', '<C-W>j', { noremap = true })

--------------------------------------------------------------
-- Telescope -------------------------------------------------
--------------------------------------------------------------
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- telescope themes
vim.keymap.set('n', '<leader>ft', function()
    builtin.colorscheme({
        enable_preview = true,
        theme_dropdown = true,
    })
end, {})

--------------------------------------------------------------
-- nvim-cmp --------------------------------------------------
--------------------------------------------------------------
local cmp = require('cmp')
cmp.setup({
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
    }),
  },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
        { name = 'buffer' },
    },
})

--------------------------------------------------------------
-- Mapping Nvim-Comment --------------------------------------
--------------------------------------------------------------
vim.api.nvim_set_keymap('n', '<leader>/', ':CommentToggle<CR>', { noremap = true })


