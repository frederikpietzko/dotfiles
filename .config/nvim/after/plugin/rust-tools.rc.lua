local status, rust_tools = pcall(require, "rust-tools")
if not status then
	return
end

local on_attach = function(_, buffer)
	local keymap_opts = { buffer = buffer }
	vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, keymap_opts)
	vim.keymap.set("n", "<c-p>", vim.lsp.buf.signature_help, keymap_opts)
  vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, keymap_opts)
  vim.keymap.set("n", "<Leader>wr", vim.lsp.buf.rename, keymap_opts)
end

local opts = {
	tools = {
		runnables = {
			use_telescope = true,
		},
		inlay_hints = {
			auto = true,
			show_parameter_hints = true,
		},
	},
	server = {
		on_attach = on_attach,
		settings = {
			["rust-analyzer"] = {
				checkOnSave = {
					command = "clippy",
				},
			},
		},
	},
}

rust_tools.setup(opts)
