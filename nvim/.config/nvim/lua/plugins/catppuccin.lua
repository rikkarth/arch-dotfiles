return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	config = function()
		-- loads catppuccin
		vim.cmd.colorscheme("catppuccin")
		require("catppuccin").setup({ transparent_background = true })
		vim.cmd.colorscheme("catppuccin")
	end,
}
