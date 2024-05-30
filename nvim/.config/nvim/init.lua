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

-- loads lazy
require("lazy").setup("plugins")

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

vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})


