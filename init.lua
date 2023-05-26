---------------------------------------------------------
-- MODULE IMPORT ----------------------------------------
---------------------------------------------------------

---------------------------------------------------------
-- Packer Config ----------------------------------------
---------------------------------------------------------
require('packer-import')
vim.cmd([[packadd packer.nvim]])

---------------------------------------------------------
-- Configs import ---------------------------------------
---------------------------------------------------------
require('ale-config')
require('feline-config')
require('general-config')
require('lspconfig-config')
require('keybinds-config')
require('notify-config')
require('nvimtree-config')
require('mason-config')
require('startify-config')
require('themes-config')
require('toggleterm-config')
require('transparent-config')
require('treesitter-config')
require('whichkey-config')


