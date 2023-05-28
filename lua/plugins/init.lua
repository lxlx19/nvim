--------------------------------------------------------------
-- PACKER IMPORT ---------------------------------------------
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
 --   use 'airblade/vim-gitgutter'

--- Gitsigns -------------------------------------------------
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }

--- Nvim-Visual-Multi ----------------------------------------
    use 'mg979/vim-visual-multi'

--- Notify ---------------------------------------------------  
    use 'rcarriga/nvim-notify'

--- Telescope with FZF ---------------------------------------
    use {
        'nvim-telescope/telescope.nvim',
        requires = { 
            {'nvim-lua/popup.nvim'},
            {'nvim-lua/plenary.nvim'}
        }
    }
    use 'nvim-telescope/telescope-fzf-native.nvim'
    use 'junegunn/fzf.vim'

--- Feline ---------------------------------------------------
    use 'freddiehaddad/feline.nvim'

--- Lualine --------------------------------------------------
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'nvim-tree/nvim-web-devicons', opt = true}
    }

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

    --- Startify -------------------------------------------------
    use 'mhinz/vim-startify'

--- Barbar ---------------------------------------------------
    use 'lewis6991/gitsigns.nvim'
    use 'romgrk/barbar.nvim'

--- Vim wiki -------------------------------------------------
    use 'vimwiki/vimwiki'

--- Transparent ----------------------------------------------
    use 'xiyaowong/nvim-transparent'

--- Which Key ------------------------------------------------
    use {
        'folke/which-key.nvim',
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {

            }
        end
    }

--- Jedi -----------------------------------------------------
    use 'davidhalter/jedi-vim'

--- ALE ------------------------------------------------------
    use 'dense-analysis/ale'

--- Smart Column ---------------------------------------------
    use "m4xshen/smartcolumn.nvim"

--- Nvim-Autopairs -------------------------------------------
    use {
        'windwp/nvim-autopairs',
        config = function()
            require('nvim-autopairs').setup{}
        end
    }

--- Comment.nvim ------------------------------------------
    use {
        'terrortylor/nvim-comment',
        config = function()
            require('nvim_comment').setup()
        end
    }

--- Indent Blankline ------------------------------------------
    use "lukas-reineke/indent-blankline.nvim"

--- Colorizer -----------------------------------------------
    use 'norcalli/nvim-colorizer.lua'

--- Glow -----------------------------------------------------
    use "ellisonleao/glow.nvim"

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
    use { "ellisonleao/gruvbox.nvim" }    

--- Edge -----------------------------------------------------
    use 'sainnhe/edge'

--- One Dark -------------------------------------------------
    use 'joshdick/onedark.vim'

--- Zephur ---------------------------------------------------
    use({
        'glepnir/zephyr-nvim',
        requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
    })

--- Vim-Nightfly-Color ---------------------------------------
    use { "bluz71/vim-nightfly-colors", as = "nightfly" }

--- tokyonight.nvim ------------------------------------------
    use 'folke/tokyonight.nvim'

--- Bluloco --------------------------------------------------
    use {
        'uloco/bluloco.nvim',
        requires = {
            'rktjmp/lush.nvim'
        }
    }


end)


