local status, nvim_lsp = pcall(require, "lspconfig")
if not status then
	return
end

local on_attach = function(_, buffer)
	local keymap_opts = { buffer = buffer }
	vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
  vim.keymap.set("n", "<c-p>", vim.lsp.buf.signature_help, keymap_opts)
  vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, keymap_opts)
  vim.keymap.set("n", "<Leader>sr", vim.lsp.buf.rename, keymap_opts)
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
-- nvim_lsp.nimls.setup({})

-- Rust
-- nvim_lsp.rls.setup({
--on_attach = on_attach
--})
