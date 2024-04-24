vim.cmd [[packadd packer.nvim]]
return require("packer").startup(function(use)

    use('wbthomason/packer.nvim')
    use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
    use 'rockerBOO/boo-colorscheme-nvim'
    use ('Tsuzat/NeoSolarized.nvim')
    use ("craftzdog/solarized-osaka.nvim")
    use("tpope/vim-fugitive")
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('ThePrimeagen/harpoon')
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
    }
    use {
          'VonHeikemen/lsp-zero.nvim',
          branch = 'v1.x',
          requires = {

              -- Autocompletion
              {'hrsh7th/nvim-cmp'},
              {'hrsh7th/cmp-buffer'},
              {'hrsh7th/cmp-path'},
              {'saadparwaiz1/cmp_luasnip'},
              {'hrsh7th/cmp-nvim-lsp'},
              {'hrsh7th/cmp-nvim-lua'},

              -- Snippets
              {'L3MON4D3/LuaSnip'},
              {'rafamadriz/friendly-snippets'},
          }
      }
end)


