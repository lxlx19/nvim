---------------------------------------------------------
-- MODULE IMPORT ----------------------------------------
---------------------------------------------------------

---------------------------------------------------------
-- Packer Config ----------------------------------------
---------------------------------------------------------
require('plugins')
vim.cmd([[packadd packer.nvim]])
vim.cmd([[packadd nvim-web-devicons]])

---------------------------------------------------------
-- Configs import ---------------------------------------
---------------------------------------------------------
require('config/ale')
require('config/general')
require('config/keybinds')
require('config/lspconfig')
require('config/lualine')
require('config/mason')
require('config/notify')
require('config/nvimtree')
require('config/startify')
require('config/themes')
require('config/toggleterm')
require('config/transparent')
require('config/treesitter')
require('config/whichkey')
