local status, nvim_lsp = pcall(require, "lspconfig")
local settings = require("settings")
if not status then
	return
end

local protocal = require("vim.lsp.protocol")

local on_attach = function(client, bufnr)
	-- formatting
	--if client.server_capabilities.documentFormattingProvider then
	-- vim.api.nvim_command [[augroup Format]]
	--vim.api.nvim_command [[autocmd! * <buffer>]]
	--vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
	--vim.api.nvim_command [[augroup END]]
	--end
end

-- Typescript
nvim_lsp.tsserver.setup({
	on_attach = on_attach,
	filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
	cmd = { "typescript-language-server", "--stdio" },
})

-- Lua
nvim_lsp.sumneko_lua.setup({
	on_attach = on_attach,
	settings = {
		Lua = {
			diagnostics = {
				-- Get the language server to recognize vim global
				globals = { "vim" },
			},
			workspace = {
				-- Make the server aware of Neovim runtime files
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})

-- Python
nvim_lsp.pyright.setup({
	on_attach = on_attach,
})

-- Java
nvim_lsp.java_language_server.setup({})

-- Golang
nvim_lsp.gopls.setup({})

-- Nim -- Something is not working here
nvim_lsp.nimls.setup({})

-- Rust
nvim_lsp.rls.setup({
	settings = {
		unstable_features = true,
		build_on_save = true,
		all_features = true,
	},
})
