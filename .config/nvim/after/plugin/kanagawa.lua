require('kanagawa').setup({
    undercurl = true,
    commentStyle = { italic = true },
    functionStyle = { bold = true },
    keywordStyle = { italic = false },
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = true,
    dimInactive = false,
    terminalColors = true,
    overrides = function(colors)
      local theme = colors.theme
      return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
      }
    end,
    colors = {
        theme = { all = { ui = { bg_gutter = 'none', float = { bg = 'none' } } } },
    },
    theme = "dragon",
    background = {
        dark = "dragon",
        light = "lotus",
    },
})

vim.cmd("colorscheme kanagawa")
