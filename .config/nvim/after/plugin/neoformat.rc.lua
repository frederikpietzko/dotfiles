vim.g.neoformat_try_node_exe = true
vim.g.neoformat_try_formatprg = true
vim.api.nvim_command [[augroup fmt]]
vim.api.nvim_command [[autocmd!]]
vim.api.nvim_command [[autocmd BufWritePre *.{tsx,ts,jsx,js} Neoformat]]
vim.api.nvim_command [[augroup END]]
vim.keymap.set("n", "<Leader>cf", "<cmd>Neoformat<cr>")
