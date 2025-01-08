return {
	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"catppuccin/nvim",
		lazu = false,
		name = "catppuccin",
		priority = 1000
	},
	{
		'echasnovski/mini.nvim',
		version = '*',
		enabled = true,
		config = function()
			local statusline = require "mini.statusline"
			statusline.setup { use_icons = true }
		end
	},
	{ "nvim-tree/nvim-web-devicons" },
}
