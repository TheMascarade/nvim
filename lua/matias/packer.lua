vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    -- Packer can manage itself
    use "lukas-reineke/indent-blankline.nvim"
    use 'wbthomason/packer.nvim'
    use "tpope/vim-fugitive"
    use "mbbill/undotree"
    use 'tanvirtin/monokai.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use "folke/zen-mode.nvim"
    use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}
    -- Lua
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {} end
        }
        use {
            'rose-pine/neovim',
            as = 'rose-pine'
        }
        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }
        use {
            'nvim-telescope/telescope.nvim',
            tag = '0.1.1',
            -- or                            , branch = '0.1.x',
            requires = { {'nvim-lua/plenary.nvim'} },
        }
        use {
            'nvim-telescope/telescope-fzf-native.nvim',
            run = 'make'
        }
        use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v2.x',
            requires = {
                -- LSP Support
                {'neovim/nvim-lspconfig'},             -- Required
                {'williamboman/mason.nvim'},
                {'williamboman/mason-lspconfig.nvim'},
                {
                    'williamboman/mason.nvim',
                    run = function()
                        pcall(vim.cmd, 'MasonUpdate')
                    end,
                },
                {'williamboman/mason-lspconfig.nvim'}, -- Optional
                -- Autocompletion
                {'hrsh7th/nvim-cmp'},     -- Required
                {'hrsh7th/cmp-nvim-lsp'}, -- Required
                {'L3MON4D3/LuaSnip'},     -- Required
            }
        }
    end)
