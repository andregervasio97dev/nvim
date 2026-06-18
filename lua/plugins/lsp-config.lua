require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"bashls",
		"ts_ls",
		"gopls",
		"jsonls",
		"rust_analyzer",
		"cssls",
		"html",
		"jsonls",
		"tailwindcss",
		"somesass_ls",
		"hyprls",
		"postgres_lsp",
	}
})

---@type vim.lsp.Config
local config_luals = {
	---@type lspconfig.settings.lua_ls
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			workspace = {
				preloadFileSize = 10000,
				library = {
					vim.env.VIMRUNTIME,
				}
			},
		},
	},
}
vim.lsp.config('lua_ls', config_luals)

-- Triggers on LSP attach
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("my.lsp", {}),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		-- Implementation Enabling
		if client:supports_method('textDocument/implementation') then
			--keymap for vim.lsp.buf.implementation
		end

		-- Auto-completion enable
		if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, args.buf, {
				autotrigger = true,
			})
		end

		-- Auto-formatting enable
		if not client:supports_method('textDocument/willSaveWaitUntil')
			and client:supports_method('textDocument/formatting') then
			vim.api.nvim_create_autocmd('BufWritePre', {
				group = vim.api.nvim_create_augroup('my.lsp', { clear = false }),
				buffer = args.buf,
				callback = function()
					vim.lsp.buf.format { bufnr = args.buf, id = args.data.client_id, timeout_ms = 5000 }
				end,
			})
		end
	end
})
