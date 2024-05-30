return {
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            -- loads telescope
            local builtin = require("telescope.builtin")

            vim.keymap.set('n', '<C-p>', builtin.find_files, {}) -- telescope fuzy find config
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- project level live grep config
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            require("telescope").setup {
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {
                        }
                   }
                }
            }
            require("telescope").load_extension("ui-select")
        end
    }
}

