-- vim.g.copilot_no_tab_map = true
vim.g.copilot_enabled = false

vim.keymap.set('i', '<C-j>', '<Plug>(copilot-suggest)')
vim.keymap.set('i', '<C-l>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<C-h>', '<Plug>(copilot-previous)')
vim.keymap.set('i', '<Right>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
