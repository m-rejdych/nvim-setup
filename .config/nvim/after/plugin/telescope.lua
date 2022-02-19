vim.cmd('nnoremap <silent><leader>\\ <cmd>Telescope find_files<CR>')
vim.cmd('nnoremap <silent><leader>\' <cmd>Telescope live_grep<CR>')
vim.cmd('nnoremap <silent><leader>; <cmd>Telescope buffers<CR>')
vim.cmd('nnoremap <silent><leader>sb <cmd>Telescope current_buffer_fuzzy_find<CR>')

vim.cmd('nnoremap <silent>gn <cmd>bn<CR>')
vim.cmd('nnoremap <silent>gp <cmd>bp<CR>')

local actions = require('telescope.actions')

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "build",
      "dist",
      "target",
      "plugged",
      "package-lock.json",
    },
  },
}
