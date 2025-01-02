return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
    		-- your configuration comes here
    		-- or leave it empty to use the default settings
    		-- refer to the configuration section below
  		},
  		keys = {
    		{
      			"<leader>?",
      			function()
        			require("which-key").show({ global = false })
      			end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	{
    	'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' }
    },
	{
  		"nvim-treesitter/nvim-treesitter",
    	ensure_installed = {
      	"bash",
      	"c",
      	"diff",
      	"html",
      	"javascript",
      	"jsdoc",
      	"json",
      	"jsonc",
      	"lua",
      	"luadoc",
      	"luap",
      	"markdown",
      	"markdown_inline",
      	"printf",
      	"python",
      	"query",
      	"regex",
      	"toml",
      	"tsx",
      	"typescript",
      	"vim",
      	"vimdoc",
      	"xml",
      	"yaml",
    	},
	},
	{
  		'stevearc/oil.nvim',
  		---@module 'oil'
  		---@type oil.SetupOpts
  		opts = {},
  		-- Optional dependencies
  		dependencies = { { "echasnovski/mini.icons", opts = {} } },
  		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	},
}
