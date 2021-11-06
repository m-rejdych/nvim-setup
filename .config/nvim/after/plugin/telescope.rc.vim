nnoremap <silent>\ <cmd>Telescope find_files<CR>
nnoremap <silent>' <cmd>Telescope live_grep<CR>
nnoremap <silent>; <cmd>Telescope buffers<CR>

lua << EOF
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
EOF
