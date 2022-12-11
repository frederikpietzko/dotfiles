local status, wk = pcall(require, "which-key")
if not status then
	return
end

wk.setup({})

wk.register({
	b = {
		name = "Buffer",
		s = {
			name = "Save",
			a = { "Save All" },
		},
	},
	f = {
		name = "Files",
		b = "File Brower",
		f = "Find File",
	},
	c = {
		name = "Code",
		f = "Format Code",
	},
}, { prefix = "<leader>" })
