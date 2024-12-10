vim.cmd('nnoremap <silent><leader>\\ <cmd>Telescope find_files<CR>')
vim.cmd('nnoremap <silent><leader>/ <cmd>Telescope live_grep<CR>')
vim.cmd('nnoremap <silent><leader>; <cmd>Telescope buffers<CR>')
vim.cmd('nnoremap <silent><leader>sb <cmd>Telescope current_buffer_fuzzy_find<CR>')
vim.cmd('nnoremap <silent><leader>qs <cmd>Telescope quickfix<CR>')
vim.cmd('nnoremap <silent><leader>qh <cmd>Telescope quickfixhistory<CR>')

vim.cmd('nnoremap <silent>gn <cmd>bn<CR>')
vim.cmd('nnoremap <silent>gp <cmd>bp<CR>')

require('telescope').setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "build",
      "dist",
      "target",
      "plugged",
      "package-lock.json",
      "migraions",
      "^.git/",
    },
    layout_strategy = 'bottom_pane',
    layout_config = {
      height = 0.6,
    },
    border = true,
    sorting_strategy = "ascending",
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
  extensions = {
    fzf = {
      fuzzy = true,                   -- false will only do exact matching
      override_generic_sorter = true, -- override the generic sorter
      override_file_sorter = true,    -- override the file sorter
      case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
    }
  }
}

require('telescope').load_extension('fzf')
