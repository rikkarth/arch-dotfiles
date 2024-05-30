return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        -- loads telescope object
        local builtin = require("telescope.builtin")

        vim.keymap.set('n', '<C-p>', builtin.find_files, {}) -- telescope fuzy find config
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- project level live grep config
    end
}

