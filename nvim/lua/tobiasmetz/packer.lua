-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    --  use({
    --	  'rose-pine/neovim',
    --	  as = 'rose-pine',
    --	  config = function()
    --		  vim.cmd('colorscheme rose-pine')
    --	  end
    --  })
    ---- Achtung weitere Config stetht in  init.lua
    --     use {
    --         'lalitmee/cobalt2.nvim',
    --         requires = 'tjdevries/colorbuddy.nvim'
    --     }
    --Debugger:
    use('mfussenegger/nvim-dap')
    use({
        'mxsdev/nvim-dap-vscode-js',
        config = function()
            require("dap-vscode-js").setup {
                -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
                debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation.
                -- debugger_cmd = { "extension" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
                adapters = { 'chrome', 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost',
                    'node', 'chrome' }, -- which adapters to register in nvim-dap
                -- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
                -- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
                -- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
            }
        end
    })
    --END Debugger
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })
    -- Darcula from JetBrains
    use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }
    -- VSCODE THEME:
    -- use({ 'Mofiqul/vscode.nvim' })
    -- vim.o.background = 'dark'
    -- -- For light theme
    -- local c = require('vscode.colors').get_colors()
    -- require('vscode').setup({
    --     -- Alternatively set style in setup
    --     -- style = 'light'

    --     -- Enable transparent background
    --     transparent = true,

    --     -- Enable italic comment
    --     italic_comments = true,

    --     -- Disable nvim-tree background color
    --     disable_nvimtree_bg = true,

    --     -- Override colors (see ./lua/vscode/colors.lua)
    --     color_overrides = {
    --         vscLineNumber = '#FFFFFF',
    --     },

    --     -- Override highlight groups (see ./lua/vscode/theme.lua)
    --     group_overrides = {
    --         -- this supports the same val table as vim.api.nvim_set_hl
    --         -- use colors from this colorscheme by requiring vscode.colors!
    --         Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
    --     }
    -- })
    -- require('vscode').load()
    ---- END VSCODE THEME
    --
    --

    --    use({
    --        'projekt0n/github-nvim-theme',
    --        config = function()
    --            require('github-theme').setup({
    --                palettes = {
    --                    -- Custom duskfox with black background
    --                    github_dark_dimmed = {
    --                        bg0 = '#1d1d2b', -- Alt backgrounds (floats, statusline, ...)
    --                    },
    --                },
    --               -- options = {
    --               --     hide_nc_statusline = true
    --               -- }
    --            })

    --            vim.cmd('colorscheme github_dark_dimmed')
    --        end
    --    })

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("nvim-treesitter/nvim-treesitter-context");
    use("simrat39/symbols-outline.nvim");

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use("folke/zen-mode.nvim")
    use("github/copilot.vim")
    use("eandrju/cellular-automaton.nvim")
    use("laytan/cloak.nvim")

end)
