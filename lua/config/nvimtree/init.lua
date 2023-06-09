-----------------------------------------------------------
-----------------( NVIM TREE CONFIG )----------------------
-----------------------------------------------------------

-----------------------------------------------------------
---< GENERAL >---------------------------------------------
-----------------------------------------------------------
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-----------------------------------------------------------
---< SET TERM TO 24-BIT COLOR >----------------------------
-----------------------------------------------------------
vim.opt.termguicolors = true

-----------------------------------------------------------
---< SETUP NVIM TREE >-------------------------------------
-----------------------------------------------------------
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

-----------------------------------------------------------
---< Mappings >--------------------------------------------
-----------------------------------------------------------
vim.api.nvim_set_keymap("n", "<leader>t", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>r", ":NvimTreeRefresh<CR>", { noremap = true, silent = true })
