vim.cmd("autocmd!")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.termguicolors = true
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.wo.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.expandtab = true
vim.opt.shell = "bash"
vim.opt.backupskip = "/tmp/*,/private/tmp/*"
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true -- Auto indent
vim.opt.si = true -- Smart indent
vim.opt.wrap = false -- No wrap lines
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" }) -- Finding files - search down into subfolders
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.relativenumber = true
vim.opt.scrolloff = 7

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_ce = "\e[4:0m"]])

-- Turn off paste mode when leavin insert
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
	pattern = "*",
	command = "set nopaste",
})

-- Reyank after paste
vim.cmd([[xnoremap p pgvy]])

vim.opt.formatoptions:append({ "r" })
