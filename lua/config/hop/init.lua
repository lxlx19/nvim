-------------------------------------------------------- 
-- HOP CONFIG ------------------------------------------
--------------------------------------------------------

local hop = require('hop')

hop.setup {
    keys = 'etovxqpdygfblzhckisuran',
    term_seq_bias = 0.5,
}

---< Change the default keybinds >------------------------------------
vim.api.nvim_set_keymap('n', 'f', "<cmd>lua require'hop'.hint_char1()<cr>", {})

---< Pattern Matching >------------------------------------
vim.api.nvim_set_keymap('n', 't', "<cmd>HopPattern<cr>", {noremap = true})

