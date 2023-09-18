-- Automatically run :PackerCompile whenever plugins.lua is updated with an autocommand:
vim.api.nvim_create_autocmd('BufWritePost', {
    group = vim.api.nvim_create_augroup('PACKER', { clear = true }),
    pattern = 'plugins.lua',
    command = 'source <afile> | PackerCompile',
})

return require('packer').startup(
function(use)
    ---------------------
    -- Package Manager --
    ---------------------
    use('wbthomason/packer.nvim')
    use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
    --use {'neoclide/coc.nvim', branch = 'release'}
    use 'rockerBOO/boo-colorscheme-nvim'



    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    --use('nvim-lua/plenary.nvim') 
    use('ThePrimeagen/harpoon')

    use {
          'VonHeikemen/lsp-zero.nvim',
          branch = 'v1.x',
          requires = {
              -- LSP Support
              {'neovim/nvim-lspconfig'},
              {'williamboman/mason.nvim'},
              {'williamboman/mason-lspconfig.nvim'},

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


