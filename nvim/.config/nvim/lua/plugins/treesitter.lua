return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- loads treesitter
        local ts_config = require("nvim-treesitter.configs")
        ts_config.setup({
            ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
