local wk = require("which-key")
local telescope = require("telescope.builtin")
wk.add({
	{
		"<leader>b",
		group = "buffers",
		expand = function()
			return require("which-key.extras").expand.buf()
		end
	},
	-- Visual keymaps
	{
		mode = { "v" },
		{ '<leader>"', "<cmd>s/\\%V.*\\%V./\"&\"<cr><Esc>", desc = "sorround selected with Quotes" },
		{ '<leader>`', "<cmd>s/\\%V.*\\%V./`&`<cr><Esc>",   desc = "sorround selected with Backticks" },
		{ "<leader>'", "<cmd>s/\\%V.*\\%V./'&'<cr><Esc>",   desc = "sorround selected with Simple quotes" },
		{ '<leader>{', "<cmd>s/\\%V.*\\%V./{&}<cr><Esc>",   desc = "sorround selected with Braces" },
		{ '<leader>[', "<cmd>s/\\%V.*\\%V./[&]<cr><Esc>",   desc = "sorround selected with Brackets" },
		{ '<leader>(', "<cmd>s/\\%V.*\\%V./(&)<cr><Esc>",   desc = "sorround selected with Parentheses" },
		{ '<leader><', "<cmd>s/\\%V.*\\%V./<&><cr><Esc>",   desc = "sorround selected with Angled brackets" },
	},
	-- Normal mode keymaps
	{
		mode = { "n" },
		{ "<leader>q", "<cmd>q<cr>", desc = "Quit" },
		{ "<leader>w", "<cmd>w<cr>", desc = "Write" },
		{ "<leader>t", group = "tab" },
		{
			{ "<leader>te", "<cmd>tabe .<cr>", desc = "New tab" },
			{ "<leader>tt", "<cmd>tabn<cr>",   desc = "Next tab" },
			{ "<leader>tp", "<cmd>tabp<cr>",   desc = "Prev tab" },
		},
		{ "<leader>f", group = "file" },
		{
			{ "<leader>ff", telescope.find_files, desc = "Find File" },
			{ "<leader>fg", telescope.live_grep,  desc = "Find Grep" },
			{ "<leader>fh", telescope.help_tags,  desc = "Find Help" },
			{ "<leader>fb", telescope.buffers,    desc = "Buffers" },
			{ "<leader>fe", "<cmd>Oil<cr>",       desc = "Dir View" },
		},
		{ "<leader>g", group = "format" },
		{
			{ "<leader>gs", "<cmd>lua MiniSplitjoin.toggle()<cr>", desc = "Toggle split args" },
			{ '<leader>g"', 'bi"<Esc>ea"<Esc>',                    desc = "Sorround quotes" },
			{ '<leader>g`', 'bi`<Esc>ea`<Esc>',                    desc = "Sorround backtick" },
			{ "<leader>g'", "bi'<Esc>ea'<Esc>",                    desc = "Sorround simple quotes" },
			{ "<leader>gc", function() vim.cmd.norm("gcc") end,    desc = "Toggle comment" }
		},
	},
	-- Insert mode keymaps
	{
		mode = { "i" },
		{ '"', '""<Esc>i', desc = "Quotes autocomplete" },
		{ '`', '``<Esc>i', desc = "Backtick autocomplete" },
		{ "'", "''<Esc>i", desc = "Simple quotes autocomplete" },
		{ "{", "{}<Esc>i", desc = "Braces autocomplete" },
		{ "[", "[]<Esc>i", desc = "Brackets autocomplete" },
		{ "(", "()<Esc>i", desc = "Parentheses autocomplete" },
	},
})
