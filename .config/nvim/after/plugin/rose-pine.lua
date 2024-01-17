 require('rose-pine').setup({
	--- @usage 'main' | 'moon'
  variant = 'main',
  dark_variant = 'main',
  styles = {
    bold = false,
    transparency = true,
    italic = false,
  },
})

vim.cmd('colorscheme rose-pine')
