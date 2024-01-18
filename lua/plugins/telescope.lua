return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function ()
            local builtin = require('telescope.builtin')

            vim.keymap.set('n', '<Space>fo', builtin.oldfiles, {})
            vim.keymap.set('n', '<Space><Space>', builtin.find_files, {})
            vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<Space>fh', builtin.help_tags, {})
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function ()
            -- This is your opts table
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                            -- even more opts
                        }

                    }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}
