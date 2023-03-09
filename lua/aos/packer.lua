-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    -- Packer can manage itself
    use("wbthomason/packer.nvim")

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        -- or                            , branch = '0.1.x',
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use({
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    })


    -- Animations
    -- use({ "echasnovski/mini.animate", branch = "stable" })

    -- Zen Mode
    use({
        "folke/zen-mode.nvim",
        config = function()
            require("zen-mode").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            })
        end,
    })

    use({
        "folke/twilight.nvim",
        config = function()
            require("twilight").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            })
        end,
    })

    -- Themes
    use({
        'projekt0n/github-nvim-theme',
        tag = 'v0.0.7',
        -- or                            branch = '0.0.x'
        config = function()
            require('github-theme').setup({
                theme_style = "dark",
                function_style = "italic",
                colors = { hint = "orange", error = "#ff2147" },
                transparent = true,
                dark_sidebar = true,
                dark_float = true,
                comment_style = "italic",
            })
        end
    })

    use("mattn/emmet-vim")

    -- Formatting

    use('neovim/nvim-lspconfig')
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')

    use({ "nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" } })
    -- use({'nvim-treesitter/playground'})

    use("theprimeagen/harpoon")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("tpope/vim-commentary")

    -- use {
    --     'nvim-tree/nvim-tree.lua',
    --     requires = {
    --         'nvim-tree/nvim-web-devicons', -- optional, for file icons
    --     },
    --     tag = 'nightly' -- optional, updated every week. (see issue #1193)
    -- }

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" },             -- Required
            { "williamboman/mason.nvim" },           -- Optional
            { "williamboman/mason-lspconfig.nvim" }, -- Optional

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },         -- Required
            { "hrsh7th/cmp-nvim-lsp" },     -- Required
            { "hrsh7th/cmp-buffer" },       -- Optional
            { "hrsh7th/cmp-path" },         -- Optional
            { "saadparwaiz1/cmp_luasnip" }, -- Optional
            { "hrsh7th/cmp-nvim-lua" },     -- Optional

            -- Snippets
            { "L3MON4D3/LuaSnip" },             -- Required
            { "rafamadriz/friendly-snippets" }, -- Optional
        },
    })

    use({
        "windwp/nvim-ts-autotag",
    })
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    })

    use({
        "startup-nvim/startup.nvim",
        config = function()
            require("startup").setup({ theme = "aos" })
        end,
    })

    -- use('Exafunction/codeium.vim')
    use("nvim-lualine/lualine.nvim")
    use("MDeiml/tree-sitter-markdown")

    use({
        "akinsho/toggleterm.nvim",
        tag = "*",
        config = function()
            require("toggleterm").setup()
        end,
    })
end)
