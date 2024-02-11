require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "php",
    "json",
    "yaml",
    "html",
    "scss",
    "css",
    "dart",
    "python",
    "typescript",
    "javascript",
    "rust",
    "lua",
    "vim",
    "prisma",
    "markdown",
    "markdown_inline",
    "graphql",
  }
}
