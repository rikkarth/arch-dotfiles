vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

-- installs lazy if not present
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- installs plugins in lazy
local plugins = {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
}
local opts = {}

-- loads lazy
require("lazy").setup(plugins, opts)

-- loads treesitter
local ts_config = require("nvim-treesitter.configs")
ts_config.setup({
    ensure_installed = { "lua", "javascript" },
    highlight = { enable = true },
    indent = { enable = true } 
})

-- loads telescope object
local builtin = require("telescope.builtin")

vim.keymap.set('n', '<C-p>', builtin.find_files, {}) -- telescope fuzy find config
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- project level live grep config

-- loads catppuccin
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin" -- loads catppuccin colorscheme
