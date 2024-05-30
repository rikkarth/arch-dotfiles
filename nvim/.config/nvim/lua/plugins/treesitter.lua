return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- loads treesitter
        local ts_config = require("nvim-treesitter.configs")
        ts_config.setup({
            ensure_installed = { "lua", "javascript", "markdown" },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
