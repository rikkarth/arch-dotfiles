return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        -- loads catppuccin
        vim.cmd.colorscheme "catppuccin"
    end
}

