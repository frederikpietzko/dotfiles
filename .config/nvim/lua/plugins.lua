local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim") -- Packer can manage itself

	use("folke/neodev.nvim") -- Patch Lua server to be nicer to develop nvim configs with.

	-- Colorschemes
	use({
		"svrana/neosolarized.nvim",
		requires = { "tjdevries/colorbuddy.nvim" },
	})
	use("arcticicestudio/nord-vim")
	use("ray-x/aurora")
	use("sainnhe/everforest")

	-- Autocompletion
	use("jose-elias-alvarez/null-ls.nvim") -- Use Nvmin lang server to inject LSP Diagnostics
	use("hrsh7th/nvim-cmp") -- Tab completion
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovims builtin lsp
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/cmp-path")

	-- LSP
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim") -- Make Mason and lspconfig play nice together
	use("neovim/nvim-lspconfig")
	-- end LSP

	-- Icons
	use("kyazdani42/nvim-web-devicons") -- File Icons
	use("onsails/lspkind-nvim") -- vscode-like pictograms

	use("glepnir/lspsaga.nvim") -- LSP UIs
	use("L3MON4D3/LuaSnip") -- Snippets
	use("hoob3rt/lualine.nvim") -- Statusline

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- Rust
	use("simrat39/rust-tools.nvim")

	-- Autoclose Brackets & Tags
	use("windwp/nvim-autopairs") -- Autopairs, auto close brackets
	use("windwp/nvim-ts-autotag")

	use("nvim-lua/plenary.nvim") -- Common utilities

	-- Telescope
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")

	-- Better Project Root for telescope & co kg
	use("ahmedkhalf/project.nvim")

	use("akinsho/nvim-bufferline.lua")
	use("norcalli/nvim-colorizer.lua")

	-- Git
	use("lewis6991/gitsigns.nvim")
	use("dinhhuy258/git.nvim")

	-- Dashboard
	use("glepnir/dashboard-nvim")

	-- Neoformat
	use("sbdchd/neoformat")

	-- Whichkey
	use("folke/which-key.nvim")

	-- Markdown Preview
	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
	})

	use({
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		setup = function()
			vim.g.mkdp_filetypes = { "markdown" }
		end,
		ft = { "markdown" },
	})
end)
