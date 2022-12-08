local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
end

vim.cmd([[packadd packer.nvim]])

packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use({
		"svrana/neosolarized.nvim",
		requires = { "tjdevries/colorbuddy.nvim" },
	})

	-- Autocompletion
	use("jose-elias-alvarez/null-ls.nvim") -- Use Nvmin lang server to inject LSP Diagnostics
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("hrsh7th/nvim-cmp") -- Tab completion
	use("hrsh7th/cmp-buffer") -- nvim-cmp source for buffer words
	use("hrsh7th/cmp-nvim-lsp") -- nvim-cmp source for neovims builtin lsp
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/cmp-path")

	-- LSP
	use("neovim/nvim-lspconfig")
	-- end LSP

	use("arcticicestudio/nord-vim")
	use("kyazdani42/nvim-web-devicons") -- File Icons
	use("glepnir/lspsaga.nvim") -- LSP UIs
	use("L3MON4D3/LuaSnip") -- Snippets
	use("hoob3rt/lualine.nvim") -- Statusline
	use("onsails/lspkind-nvim") -- vscode-like pictograms

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
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")

	use("akinsho/nvim-bufferline.lua")
	use("norcalli/nvim-colorizer.lua")

	use("lewis6991/gitsigns.nvim")
	use("dinhhuy258/git.nvim")

	use("glepnir/dashboard-nvim")

	use("sbdchd/neoformat")
end)
