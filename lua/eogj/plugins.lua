vim.cmd [[packadd packer.nvim]]
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
vim.cmd([[ let g:nvim_tree_auto_open = 1 ]])
vim.cmd([[ let g:nvim_tree_disable_netrw = 1 ]])
vim.cmd([[ let g:NERDTreeMinimalMenu = 1 ]])



return require('packer').startup(function()
    use("wbthomason/packer.nvim")

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    -- TJ created lodash of neovim
    use("nvim-lua/popup.nvim")
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- The Basics
    use {
        'VonHeikemen/lsp-zero.nvim',
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

    -- Markwodn
    use('godlygeek/tabular')
    use('preservim/vim-markdown')

    -- -- Primeagen doesn"t create lodash
    use("ThePrimeagen/git-worktree.nvim")
    use("ThePrimeagen/harpoon")

    use("mbbill/undotree")

    -- Colorscheme section
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")
    use('navarasu/onedark.nvim')

    use("nvim-treesitter/playground")
    use("romgrk/nvim-treesitter-context")

    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")

    -- My stuff
    use("mhartington/formatter.nvim")
    use("vim-test/vim-test")
    use("fatih/vim-go")
    use("/preservim/nerdtree")
    use("tpope/vim-commentary")
    use("vim-test/vim-test")
    use("tpope/vim-rails")
    use("kassio/neoterm")
    use("github/copilot.vim")
    use("mhinz/vim-mix-format")

    use("rust-lang/rust.vim")
    -- use {
    --     "folke/trouble.nvim",
    --     requires = "kyazdani42/nvim-web-devicons",
    --     config = function()
    --         require("trouble").opts {
    --             auto_open = "false",
    --             auto_preview = "false"
    --             -- your configuration comes here
    --             -- or leave it empty to use the default settings
    --             -- refer to the configuration section below
    --         }
    --     end
    -- }
end)


