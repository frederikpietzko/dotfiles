local status, telescope = pcall(require, "telescope")
if not status then
	return
end
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
	return vim.fn.expand("%:p:h")
end

local fb_actions = require("telescope").extensions.file_browser.actions
local p_actions = require("project_nvim")

telescope.setup({
	defaults = {
		mappings = {
			n = {
				["q"] = actions.close,
			},
		},
	},
	extensions = {
		file_browser = {
			theme = "dropdown",
			-- disables netrw add use telescope
			hijack_netrw = true,
			mappings = {
				["i"] = {
					["<C-w>"] = function()
						vim.cmd("normal vdb")
					end,
				},
				["n"] = {
					["N"] = fb_actions.create,
					["h"] = fb_actions.goto_parent_dir,
					["l"] = fb_actions.change_cwd,
					["/"] = function()
						vim.cmd("startinsert")
					end,
				},
			},
		},
		projects = {
			mappings = {
				["n"] = {},
			},
		},
	},
})

telescope.load_extension("file_browser")

local opts = { normap = true, silent = true }

vim.keymap.set("n", "<Leader>ff", function()
	builtin.find_files({
		no_ignore = false,
		hidden = false,
	})
end)

vim.keymap.set("n", "<Leader>fw", function()
	builtin.live_grep()
end)

vim.keymap.set("n", "<Leader>bl", function()
	builtin.buffers()
end)

vim.keymap.set("n", "<Leader>th", function()
	builtin.help_tags()
end)

vim.keymap.set("n", "<Leader>t", function()
	builtin.resume()
end)

vim.keymap.set("n", "<Leader>fb", function()
	telescope.extensions.file_browser.file_browser({
		path = "%:p:h",
		cwd = telescope_buffer_dir(),
		respect_gitignore = false,
		hidden = true,
		grouped = true,
		previewer = false,
		initial_mode = "normal",
		layout_config = { height = 40 },
	})
end)

telescope.load_extension("projects")

vim.keymap.set("n", "<leader>fpf", function()
	telescope.extensions.projects.projects({})
end)
