local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then
  return
end

ts.setup {
  highlight = {
    enable = true,
    disable = {}
  },
  indent = {
    enable = true,
    diable = {}
  },
  ensure_installed = {
    "typescript",
    "tsx",
    "lua",
    "json",
    "css",
    "python",
    "java",
    "kotlin",
    "yaml",
    "dockerfile",
    "javascript",
    "markdown",
    "prisma"
  },
  autotag = {
    enable = true,
  }
}
