require('mellifluous').setup({
  colorset = 'mellifluous',
  transparent_background = { enabled = true },
  styles = {
    main_keywords = {},
    other_keywords = {},
    types = { bold = true },
    operators = {},
    strings = {},
    functions = { bold = true },
    constants = {},
    markup = {
      headings = { bold = true },
    },
    folds = {},
  }
})

-- Apply colorscheme
vim.cmd.colorscheme('mellifluous')
