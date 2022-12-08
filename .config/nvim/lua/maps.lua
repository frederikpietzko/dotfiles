local keymap = vim.keymap

-- Do not yank with x
keymap.set("n", "x", "\"_x")

-- increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New Tab
keymap.set("n", "<Leader>te", ":tabedit<Return>", { silent = true })
-- Split window
keymap.set("n", "<Leader>ssh", ":split<Return><C-w>w", { silent = true })
keymap.set("n", "<Leader>ssv", ":vsplit<Return><C-w>w", { silent = true })

-- Move window focus
keymap.set("n", "<Leader>sw", "<C-w>w")
keymap.set("n", "<Leader>sh", "<C-w>h")
keymap.set("n", "<Leader>sk", "<C-w>k")
keymap.set("n", "<Leader>sj", "<C-w>j")
keymap.set("n", "<Leader>sl", "<C-w>l")

-- Resize Window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><top>", "<C-w>+")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><down>", "<C-w>-")
keymap.set("n", "<C-w>h", "<C-w><")
keymap.set("n", "<C-w>k", "<C-w>+")
keymap.set("n", "<C-w>l", "<C-w>>")
keymap.set("n", "<C-w>j", "<C-w>-")

-- remove highlight
keymap.set("n", "<Leader>/", ":noh<cr>")

-- Save and close
keymap.set("n", "<Leader>bs", ":w<cr>")
keymap.set("n", "<Leader>bsa", ":wa<cr>")
keymap.set("n", "<Leader>bc", ":wq<cr>")

