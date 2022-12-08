local keymap = vim.keymap

-- Do not yank with x
keymap.set("n", "x", "\"_x")

-- increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New Tab
keymap.set("n", "te", ":tabedit<Return>", { silent = true })
-- Split window
keymap.set("n", "ssh", ":split<Return><C-w>w", { silent = true })
keymap.set("n", "ssv", ":vsplit<Return><C-w>w", { silent = true })

-- Move window
keymap.set("n", "<Space>", "<C-w>w")
keymap.set("", "s<left>", "<C-w>h")
keymap.set("", "s<up>", "<C-w>k")
keymap.set("", "s<down>", "<C-w>j")
keymap.set("", "s<right>", "<C-w>l")
keymap.set("", "sh", "<C-w>h")
keymap.set("", "sk", "<C-w>k")
keymap.set("", "sj", "<C-w>j")
keymap.set("", "sl", "<C-w>l")

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
