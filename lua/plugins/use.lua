vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- plugin manager
    use 'wbthomason/packer.nvim'

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}},
    }

    -- dashboard
    use 'glepnir/dashboard-nvim' 

    -- colorscheme
    use {
	    'catppuccin/nvim',
	    as = 'catppuccin'
    }
    
    -- tree-sitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 
            'kyazdani42/nvim-web-devicons',
            opt = true 
        }
    }

    -- autopair brackets
    use 'windwp/nvim-autopairs'

    -- file manager
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        }
    }

    -- fterm
    use 'numToStr/FTerm.nvim'
    
    -- indents
    use 'lukas-reineke/indent-blankline.nvim'

    -- highlight the word under the cursor
    use {
        'xiyaowong/nvim-cursorword',
        config = function()
            require('nvim-cursorword').setup()
        end
    }

    -- auto-comment
    use 'b3nj5m1n/kommentary' 
    
    -- scrollbar
    use {
        'dstein64/nvim-scrollview',
        config = function()
            require('nvim-scrollview').setup()
        end
    }

    -- LSP
    use {
        'neovim/nvim-lspconfig',
        'hrsh7th/nvim-cmp',
        'hrsh7th/cmp-nvim-lsp',
        'saadparwaiz1/cmp_luasnip',
        'L3MON4D3/LuaSnip',
    }
    
end)
