local gh = function(gitRepo) return 'https://github.com/' .. gitRepo end

vim.pack.add({
	{ src = gh('stevearc/oil.nvim') },
	{ src = gh('nvim-tree/nvim-web-devicons') },
	{ src = gh('folke/which-key.nvim') },
	{ src = gh('nvim-lua/plenary.nvim') },
	{ src = gh('nvim-telescope/telescope.nvim') },
	{ src = gh('williamboman/mason.nvim') },
	{ src = gh('williamboman/mason-lspconfig.nvim') },
	{ src = gh('neovim/nvim-lspconfig') },
	{ src = gh('nvim-mini/mini.splitjoin') },
})
