--------------------------------------------------------------
-- Packer and Plugins ----------------------------------------
--------------------------------------------------------------

--------------------------------------------------------------
-- Packer ----------------------------------------------------
--------------------------------------------------------------
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

--------------------------------------------------------------
-- Plugins ---------------------------------------------------
--------------------------------------------------------------

--- MASON ----------------------------------------------------
  use {
      'williamboman/mason.nvim',
  }
    
--- DAP ------------------------------------------------------
  use 'mfussenegger/nvim-dap'

--- LSP ------------------------------------------------------
  use 'neovim/nvim-lspconfig'

--- Github Copilot -------------------------------------------
  use 'github/copilot.vim'

--- Completetion ---------------------------------------------
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

--- Git-Gutter -----------------------------------------------
  use 'airblade/vim-gitgutter'

--- Nvim-Visual-Multi ----------------------------------------
  use 'mg979/vim-visual-multi'

--- Notify ---------------------------------------------------  
  use 'rcarriga/nvim-notify'

--- Telescope with FZF ---------------------------------------
  use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-fzf-native.nvim'
  use 'junegunn/fzf.vim'

--- Feline ---------------------------------------------------
  use 'famiu/feline.nvim'
    
--- Devicons -------------------------------------------------
  use 'kyazdani42/nvim-web-devicons'

--- Treesitter -----------------------------------------------
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
  }

--- Nvim-tree.lua --------------------------------------------
  use {
      'nvim-tree/nvim-tree.lua',
      requires = 'nvim-tree/nvim-web-devicons',
  }

--- Toggle Terminal ------------------------------------------
  use 'akinsho/nvim-toggleterm.lua'
  
--- Alpha-nvim -----------------------------------------------
  use {
    'goolord/alpha-nvim',
    requires = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
    end
}

--- Barbar ---------------------------------------------------
  use 'lewis6991/gitsigns.nvim'
  use 'romgrk/barbar.nvim'

--- Vim wiki -------------------------------------------------
  use 'vimwiki/vimwiki'

--------------------------------------------------------------
-- Themes ----------------------------------------------------
--------------------------------------------------------------

--- Dracula --------------------------------------------------
  use {'dracula/vim', as = 'dracula'}

--- Cobalt2 --------------------------------------------------
  use {
    'lalitmee/cobalt2.nvim',
    requires = 'tjdevries/colorbuddy.nvim'
}

--- Gruvbox --------------------------------------------------
  use 'sainnhe/gruvbox-material'

--- Edge -----------------------------------------------------
  use 'sainnhe/edge'

--- One Dark -------------------------------------------------
  use 'joshdick/onedark.vim'

--- Zephur ---------------------------------------------------
  use({
  'glepnir/zephyr-nvim',
    requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
  })

end)
