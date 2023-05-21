-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Plugin de barra de status
  use 'famiu/feline.nvim'
    
  -- Plugin para ícones na barra de status
  use 'kyazdani42/nvim-web-devicons'

  -- Treesitter
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
  }

  -- NerdTree
  use 'preservim/nerdtree'
  use 'ryanoasis/vim-devicons'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'Xuyuanp/nerdtree-git-plugin'

  -- Toggle Terminal
  use 'akinsho/nvim-toggleterm.lua'


  -- Themes
  use {'dracula/vim', as = 'dracula'}

  use({
  'glepnir/zephyr-nvim',
    requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
  })

end)
