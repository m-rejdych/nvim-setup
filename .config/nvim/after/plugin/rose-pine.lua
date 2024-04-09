 require('rose-pine').setup({
	--- @usage 'main' | 'moon'
  variant = 'main',
  dark_variant = 'main',
  styles = {
    bold = true,
    transparency = true,
    italic = false,
  },
})

vim.cmd('colorscheme rose-pine')
