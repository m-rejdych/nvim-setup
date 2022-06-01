local default_colors = require('kanagawa.colors').setup()

local overrides = {
  Keyword = { fg = default_colors.peachRed, style = "bold" }
}

require('kanagawa').setup({
  keywordStyle = "bold",
  commentStyle = "NONE",
  variablebuiltinStyle = "NONE",
  typeStyle = "bold",
  overrides = overrides,
})

vim.cmd('colorscheme kanagawa')
