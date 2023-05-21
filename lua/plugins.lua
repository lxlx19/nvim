-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Mason e Requires
  use {
      'williamboman/mason.nvim',
  }
    
  -- DAP
  use 'mfussenegger/nvim-dap'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Github Copilot
  use 'github/copilot.vim'

  -- Completetion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  -- Git-Gutter
  use 'airblade/vim-gitgutter'

  -- Nvim-Visual-Multi
  use 'mg979/vim-visual-multi'

  -- Telescope with FZF
  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-fzf-native.nvim'
  use 'junegunn/fzf.vim'


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
  
  -- Alpha-nvim
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
}


  -- Themes
  use {'dracula/vim', as = 'dracula'}
  use {
    'lalitmee/cobalt2.nvim',
    requires = 'tjdevries/colorbuddy.nvim'
}

  use({
  'glepnir/zephyr-nvim',
    requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
  })

end)
