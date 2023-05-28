---------------------------------------------------------
-- MODULE IMPORT ----------------------------------------
---------------------------------------------------------

---------------------------------------------------------
-- Packer Config ----------------------------------------
---------------------------------------------------------
require('plugins')
vim.cmd([[packadd packer.nvim]])
vim.cmd([[packadd nvim-web-devicons]])
vim.o.termguicolors = true
---------------------------------------------------------
-- Configs import ---------------------------------------
---------------------------------------------------------
require('config/ale')
require('config/colorizer')
require('config/general')
require('config/glow')
require('config/indent-blankline')
require('config/keybinds')
require('config/lspconfig')
require('config/lualine')
require('config/mason')
require('config/notify')
require('config/nvimtree')
require('config/smartcolumn')
require('config/startify')
require('config/themes')
require('config/toggleterm')
require('config/transparent')
require('config/treesitter')
require('config/whichkey')


