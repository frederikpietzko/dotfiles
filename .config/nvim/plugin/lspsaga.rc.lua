local status, saga = pcall(require, "lspsaga")
if not status then
  return
end

saga.init_lsp_saga({
  server_filetype_map = {},
})

local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<Leader>es", "<cmd>Lspsaga diagnostic_jump_next<cr>", opts)
vim.keymap.set("n", "<Leader>cd", "<cmd>Lspsaga hover_doc<cr>", opts)
vim.keymap.set("i", "<C-p>", "<cmd>Lspsaga signature_help<cr>", opts)
vim.keymap.set("n", "<Leader>dg", "<cmd>Lspsaga lsp_finder<cr>", opts)
vim.keymap.set("n", "<Leader>dp", "<cmd>Lspsaga peek_definition<cr>", opts)
vim.keymap.set("n", "<Leader>sr", "<cmd>Lspsaga rename<cr>", opts)
