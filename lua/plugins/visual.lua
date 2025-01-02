return {
	{ "catppuccin/nvim",            name = "catppuccin", priority = 1000 },
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
