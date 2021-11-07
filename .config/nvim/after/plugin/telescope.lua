vim.cmd('nnoremap <silent>\\ <cmd>Telescope find_files<CR>')
vim.cmd('nnoremap <silent>\' <cmd>Telescope find_files<CR>')
vim.cmd('nnoremap <silent>; <cmd>Telescope find_files<CR>')

vim.cmd('nnoremap <silent>gn <cmd>bn<CR>')
vim.cmd('nnoremap <silent>gp <cmd>bp<CR>')

local actions = require('telescope.actions')

require('telescope').setup {
  mappings = {
    n = {
      ["q"] = actions.close
    },
  },
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "build",
      "dist",
      "plugged",
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    },
    live_grep = {
      theme = "dropdown",
    },
    buffers = {
      theme = "dropdown",
    },
  },
}
