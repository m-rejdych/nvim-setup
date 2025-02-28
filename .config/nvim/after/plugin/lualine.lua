require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = {
      -- Custom theme to match your Kanagawa-Gruvbox hybrid
      normal = {
        a = { fg = '#1E1E28', bg = '#8AAA94', gui = 'bold' },  -- Using your teal color
        b = { fg = '#E2DED3', bg = '#3D3C37' },
        c = { fg = '#C5BB8F', bg = '#2A2A27' }
      },
      insert = {
        a = { fg = '#1E1E28', bg = '#B9A878', gui = 'bold' },  -- Using your warm yellow
      },
      visual = {
        a = { fg = '#1E1E28', bg = '#B06A6F', gui = 'bold' },  -- Using your soft red
      },
      replace = {
        a = { fg = '#1E1E28', bg = '#C99355', gui = 'bold' },  -- Using your ochre
      },
      command = {
        a = { fg = '#1E1E28', bg = '#98A67F', gui = 'bold' },  -- Using your warm green
      },
      inactive = {
        a = { fg = '#C5BB8F', bg = '#32312D', gui = 'bold' },
        b = { fg = '#C5BB8F', bg = '#32312D' },
        c = { fg = '#C5BB8F', bg = '#282826' }
      }
    },
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {
      {'branch', icon = '', color = {fg = '#B9A878'}},
      {'diff',
        colored = true,
        diff_color = {
          added = {fg = '#98A67F'},    -- Warm green
          modified = {fg = '#8EABC4'},  -- Soft blue
          removed = {fg = '#B06A6F'},   -- Soft red
        },
        symbols = {added = ' ', modified = ' ', removed = ' '},
      },
    },
    lualine_c = {
      {'filename', path = 1, color = {fg = '#E2DED3'}},
      {
        'diagnostics',
        sources = {'nvim_diagnostic'},
        symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '},
        diagnostics_color = {
          error = {fg = '#A56F72'},  -- Autumn red
          warn = {fg = '#C8A36C'},   -- Soft gold
          info = {fg = '#83A09E'},   -- Wave aqua
          hint = {fg = '#7D92B0'},   -- Steel blue
        },
        colored = true,
      },
    },
    lualine_x = {
      {'encoding', color = {fg = '#C5BB8F'}},
      {'fileformat', color = {fg = '#C5BB8F'}},
      {'filetype', color = {fg = '#E2DED3'}}
    },
    lualine_y = {
      {'progress', color = {fg = '#E2DED3', bg = '#3D3C37'}},
    },
    lualine_z = {
      {'location', color = {fg = '#1E1E28', bg = '#8AAA94', gui = 'bold'}}
    }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {'nvim-tree', 'fugitive', 'quickfix'}
}
