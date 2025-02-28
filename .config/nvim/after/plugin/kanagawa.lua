-- Old config
-- require('kanagawa').setup({
--     undercurl = true,
--     commentStyle = { italic = true },
--     functionStyle = { bold = true },
--     keywordStyle = { italic = false },
--     statementStyle = { bold = true },
--     typeStyle = {},
--     transparent = true,
--     dimInactive = false,
--     terminalColors = true,
--     overrides = function(colors)
--       local theme = colors.theme
--       return {
--           NormalFloat = { bg = "none" },
--           FloatBorder = { bg = "none" },
--           FloatTitle = { bg = "none" },
--       }
--     end,
--     colors = {
--         theme = { all = { ui = { bg_gutter = 'none', float = { bg = 'none' } } } },
--     },
--     theme = "dragon",
--     background = {
--         dark = "dragon",
--         light = "lotus",
--     },
-- })

vim.highlight.priorities.semantic_tokens = 95

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
  theme = "dragon",
  colors = {
    palette = {
      -- Soften blue tones but with improved contrast
      winterBlue = "#8499B0",  -- Slightly brighter blue for better contrast
      crystalBlue = "#8BA7B3", -- Enhanced crystal blue
      springBlue = "#8EABC0",  -- More visible spring blue
      waveBlue1 = "#445169",   -- Slightly lighter wave blue for contrast

      -- Warm colors adjusted with better contrast
      surimiOrange = "#C8865A", -- Brighter orange for better visibility
      carpYellow = "#D1AF7D",   -- More vibrant yellow
      sakuraPink = "#B09CAC",   -- Enhanced mauve for better contrast
      peachRed = "#D38788",     -- Brighter peach red
      autumnRed = "#C27276",    -- More visible autumn red
      waveRed = "#C88D95",      -- Enhanced wave red

      -- Green tones with improved contrast
      autumnGreen = "#96AB8C", -- Brighter green
      springGreen = "#B3C185", -- More vibrant olive-green
      waveAqua1 = "#95BCA0",   -- Enhanced aqua for better visibility

      -- Adjust violet tones for better readability
      oniViolet = "#A095B0",     -- Enhanced violet
      springViolet1 = "#A69DB5", -- Brighter spring violet

      -- Background colors with slight warm tint like gruvbox
      sumiInk0 = "#1E1E28", -- Slightly warmer dark background
      sumiInk1 = "#2A2A36", -- Adjusted lighter background with slight warmth
      sumiInk2 = "#383844", -- For UI elements, slightly warmer
      sumiInk4 = "#5A5A7A", -- Brighter for FloatBorder, better contrast

      -- Text and foreground colors with improved contrast
      fujiWhite = "#EDE8DD",  -- Brighter main foreground color
      oldWhite = "#D5C99F",   -- Enhanced secondary foreground
      dragonBlue = "#83BBAD", -- Brighter teal for DiagnosticHint

      -- Add some UI-specific colors with better contrast
      selectionBg = "#455868", -- Enhanced selection background
      popupBg = "#2A2A27",     -- Slightly warm background for popups
      popupSel = "#4D4C44",    -- Enhanced selected item in popups
      menuBg = "#282826",      -- Warm background for menus
      menuSelBg = "#45443C",   -- Warm selected background

      -- Border colors with better visibility
      borderColor = "#5D5C50", -- Enhanced border color

      -- Scroll bar colors with improved contrast
      scrollbarBg = "#33322E",    -- Warm scrollbar background
      scrollbarThumb = "#6D6C60", -- Enhanced scrollbar thumb
    },
    theme = {
      dragon = {
        ui = {
          bg_gutter = "none" -- Transparent line number column
        },
        syn = {
          parameter = "#BDAA91" -- Enhanced gruvbox-like parameter color
        }
      },
      all = {
        ui = {
          bg_p1 = "#2A2A36", -- Panel backgrounds (adjusted)
          bg_p2 = "#383844", -- Slightly lighter panels
          bg_gutter = 'none',
          float = { bg = 'none' },
        }
      }
    }
  },
  overrides = function(colors)
    local palette = colors.palette
    return {
      -- Syntax highlighting with more gruvbox-like colors but enhanced contrast
      Boolean = { fg = palette.surimiOrange },
      Number = { fg = palette.surimiOrange },
      String = { fg = palette.springGreen },
      Identifier = { fg = palette.fujiWhite },
      Function = { fg = palette.carpYellow, bold = true },
      Statement = { fg = palette.sakuraPink },
      Keyword = { fg = palette.sakuraPink, italic = true },
      Operator = { fg = palette.autumnRed },
      Type = { fg = palette.waveAqua1 },

      -- Special elements with improved contrast
      Special = { fg = palette.surimiOrange },
      Comment = { fg = "#8A8278", italic = true }, -- Brighter comments for better readability

      -- Make line numbers more visible
      LineNr = { fg = "#6A6A86" }, -- Enhanced visibility
      CursorLineNr = { fg = palette.oldWhite, bold = true },

      -- Adjust UI elements for a softer look

      -- For Tree-sitter integration with improved contrast
      ["@keyword"] = { fg = palette.sakuraPink, italic = false },
      ["@variable"] = { fg = palette.fujiWhite },
      ["@variable.member"] = { fg = palette.waveAqua1 },
      ["@function"] = { fg = palette.carpYellow, bold = true },
      ["@property"] = { fg = palette.waveAqua1 },
      ["@punctuation"] = { fg = palette.fujiWhite },
      ["@constant"] = { fg = palette.surimiOrange },
      ["@parameter"] = { fg = "#BDAA91" }, -- Enhanced parameter color
      ["@variable.builtin"] = { fg = palette.autumnRed },
      ["@this"] = { fg = palette.autumnRed },
      ["@keyword.import"] = { fg = palette.autumnRed },
      ["@include"] = { fg = palette.autumnRed },
      ["@keyword.control.import"] = { fg = palette.autumnRed },


      -- Enhanced diagnostic colors for better visibility
      DiagnosticError = { fg = palette.peachRed },
      DiagnosticWarn = { fg = palette.carpYellow },
      DiagnosticInfo = { fg = palette.waveAqua1 },
      DiagnosticHint = { fg = palette.dragonBlue },
      FloatTitle = { bg = "none" },

      Pmenu = { fg = palette.fujiWhite, bg = palette.popupBg },
      PmenuSel = { fg = palette.fujiWhite, bg = palette.popupSel, bold = true },
      PmenuSbar = { bg = palette.scrollbarBg },
      PmenuThumb = { bg = palette.scrollbarThumb },

      -- Selection with improved contrast
      Visual = { bg = palette.selectionBg },
      VisualNOS = { bg = palette.selectionBg },

      -- Search highlighting with better visibility
      Search = { fg = palette.sumiInk0, bg = palette.waveAqua1, bold = false },
      IncSearch = { fg = palette.sumiInk0, bg = palette.carpYellow, bold = true },
      CurSearch = { fg = palette.sumiInk0, bg = palette.carpYellow, bold = true },


      -- Cursor and cursor line
      Cursor = { fg = palette.sumiInk0, bg = palette.fujiWhite },
      CursorLine = { bg = "#33322D" }, -- Enhanced cursor line visibility

      -- Fold column with better contrast
      Folded = { fg = palette.fujiWhite, bg = "#3A3935" },
      FoldColumn = { fg = palette.sumiInk4, bg = "NONE" },

      -- Status line with improved contrast
      StatusLine = { fg = palette.oldWhite, bg = "#3A3935" },
      StatusLineNC = { fg = palette.fujiWhite, bg = "#2F2E29" },

      -- Tab line with better visibility
      TabLine = { fg = palette.fujiWhite, bg = "#2F2E29" },
      TabLineSel = { fg = palette.oldWhite, bg = "#45443C", bold = true },
      TabLineFill = { bg = "#29282A" },

      -- Split dividers with enhanced contrast
      VertSplit = { fg = palette.borderColor, bg = "NONE" },

      -- Floating windows
      NormalFloat = { fg = palette.fujiWhite, bg = 'none' },
      FloatBorder = { fg = palette.borderColor, bg = 'none' },

      -- Diff highlighting with improved contrast
      DiffAdd = { bg = "#424D40" },
      DiffChange = { bg = "#404D5A" },
      DiffDelete = { bg = "#5A3A40" },
      DiffText = { bg = "#4D5C41" },

      -- Completion (nvim-cmp) with better contrast
      CmpItemAbbr = { fg = palette.fujiWhite },
      CmpItemAbbrMatch = { fg = palette.carpYellow, bold = true },
      CmpItemAbbrMatchFuzzy = { fg = palette.carpYellow, bold = true },
      CmpItemKind = { fg = palette.springBlue },
      CmpItemMenu = { fg = palette.springViolet1 },

      -- Nvim-tree with enhanced visibility
      NvimTreeNormal = { fg = palette.fujiWhite, bg = 'none' },
      NvimTreeEndOfBuffer = { fg = palette.sumiInk1, bg = 'none' },
      NvimTreeFolderName = { fg = palette.springBlue },
      NvimTreeOpenedFolderName = { fg = palette.springBlue, bold = true },

      -- Telescope with improved contrast
      TelescopeMatching = { fg = palette.carpYellow, bold = true },
      TelescopeNormal = { bg = 'none' },
      TelescopeBorder = { fg = palette.borderColor, bg = 'none' },
      TelescopeSelection = { fg = palette.fujiWhite, bg = 'none' },
      TelescopePromptPrefix = { fg = palette.surimiOrange },

      -- LSP with better visibility
      LspReferenceText = { bg = "#45443C" },
      LspReferenceRead = { bg = "#45443C" },
      LspReferenceWrite = { bg = "#45443C" },
      LspSignatureActiveParameter = { fg = palette.carpYellow, bold = true },

      -- Diagnostics floating with enhanced contrast
      DiagnosticFloatingError = { fg = palette.peachRed },
      DiagnosticFloatingWarn = { fg = palette.carpYellow },
      DiagnosticFloatingInfo = { fg = palette.waveAqua1 },
      DiagnosticFloatingHint = { fg = palette.dragonBlue },

      -- Indent-blankline with improved visibility
      IndentBlanklineChar = { fg = "#45443C" },
      IndentBlanklineContextChar = { fg = "#6D6C60" },
    }
  end,
  background = {
    dark = "dragon",
    light = "lotus",
  },
})

-- Lower contrast variant
-- colors = {
--   palette = {
--     -- Soften blue tones even further
--     winterBlue = "#7D8FA0",   -- More muted, gruvbox-like blue
--     crystalBlue = "#83959F",  -- More neutral crystal blue
--     springBlue = "#859CA9",   -- Gentler spring blue with less saturation
--     waveBlue1 = "#3A4858",    -- Darker, more muted wave blue

--     -- Warm colors adjusted to be more gruvbox-like
--     surimiOrange = "#BD8F6C",  -- More earthy orange like gruvbox
--     carpYellow = "#BD9F7B",    -- Less bright yellow, more earthy
--     sakuraPink = "#A08F9E",    -- More neutral mauve
--     peachRed = "#C27F80",      -- Warmer, less saturated peach red
--     autumnRed = "#B06A6F",     -- Earthier autumn red
--     waveRed = "#B78088",       -- More muted wave red

--     -- Green tones more like gruvbox
--     autumnGreen = "#8A9B83",  -- Earthier green
--     springGreen = "#A3B07D",  -- More olive-toned green
--     waveAqua1 = "#8AAA94",    -- Slightly desaturated for better gruvbox feel

--     -- Adjust violet tones to be more neutral
--     oniViolet = "#928BA0",      -- More muted violet
--     springViolet1 = "#9A92A6",  -- Softer spring violet

--     -- Background colors with slight warm tint like gruvbox
--     sumiInk0 = "#1E1E28",  -- Slightly warmer dark background
--     sumiInk1 = "#2A2A36",  -- Adjusted lighter background with slight warmth
--     sumiInk2 = "#383844",  -- For UI elements, slightly warmer
--     sumiInk4 = "#525266",  -- Added for FloatBorder, warmer tone

--     -- Text and foreground colors
--     fujiWhite = "#E2DED3",   -- Main foreground color, slightly warmer
--     oldWhite = "#C5BB8F",    -- Warmer secondary foreground
--     dragonBlue = "#7AA89E",  -- More teal-like for DiagnosticHint

--     -- Add some UI-specific colors
--     selectionBg = "#3A4B58",  -- Warmer, less blue selection background
--     popupBg = "#2A2A27",      -- Slightly warm background for popups
--     popupSel = "#45443C",     -- Warmer selected item in popups
--     menuBg = "#282826",       -- Warm background for menus
--     menuSelBg = "#3D3C37",    -- Warm selected background

--     -- Border colors
--     borderColor = "#4D4C43",  -- Warm border color

--     -- Scroll bar colors
--     scrollbarBg = "#33322E",     -- Warm scrollbar background
--     scrollbarThumb = "#5D5C53",  -- Warm scrollbar thumb
--   },
--   theme = {
--     dragon = {
--       ui = {
--         bg_gutter = "none"  -- Transparent line number column
--       },
--       syn = {
--         parameter = "#A89984"  -- Gruvbox-like parameter color
--       }
--     },
--     all = {
--       ui = {
--         bg_p1 = "#2A2A36",  -- Panel backgrounds (adjusted)
--         bg_p2 = "#383844",  -- Slightly lighter panels
--         bg_gutter = 'none',
--         float = { bg = 'none' },
--       }
--     }
--   }
-- },
-- overrides = function(colors)
--   local palette = colors.palette
--   return {
--     -- Syntax highlighting with more gruvbox-like colors
--     Boolean = { fg = palette.surimiOrange },
--     Number = { fg = palette.surimiOrange },
--     String = { fg = palette.springGreen },
--     Identifier = { fg = palette.fujiWhite },
--     Function = { fg = palette.carpYellow, bold = true },  -- Reduced brightness
--     Statement = { fg = palette.sakuraPink },
--     Keyword = { fg = palette.sakuraPink, italic = true },
--     Operator = { fg = palette.autumnRed },
--     Type = { fg = palette.waveAqua1 },

--     -- Special elements
--     Special = { fg = palette.surimiOrange },
--     Comment = { fg = "#7A7268", italic = true },  -- Darker comments for better contrast

--     -- Make line numbers more visible
--     LineNr = { fg = "#525266" },
--     CursorLineNr = { fg = palette.oldWhite, bold = true },

--     -- Adjust UI elements for a softer look

--     -- For Tree-sitter integration
--     ["@keyword"] = { fg = palette.sakuraPink, italic = false },
--     ["@variable"] = { fg = palette.fujiWhite },
--     ["@variable.member"] = { fg = palette.waveAqua1 },
--     ["@function"] = { fg = palette.carpYellow, bold = true },
--     ["@property"] = { fg = palette.waveAqua1 },
--     ["@punctuation"] = { fg = palette.fujiWhite },
--     ["@constant"] = { fg = palette.surimiOrange },       -- Added for constants
--     ["@parameter"] = { fg = "#A89984" },                 -- Gruvbox-like parameter color
--     ["@variable.builtin"] = { fg = palette.autumnRed },  -- For 'this' keyword
--     ["@this"] = { fg = palette.autumnRed },
--     ["@keyword.import"] = { fg = palette.autumnRed },    -- For 'import' keyword
--     ["@include"] = { fg = palette.autumnRed },
--     ["@keyword.control.import"] = { fg = palette.autumnRed },


--     -- Specifically soften diagnostic colors
--     DiagnosticError = { fg = palette.peachRed },
--     DiagnosticWarn = { fg = palette.carpYellow },
--     DiagnosticInfo = { fg = palette.waveAqua1 },
--     DiagnosticHint = { fg = palette.dragonBlue },
--     FloatTitle = { bg = "none" },

--     Pmenu = { fg = palette.fujiWhite, bg = palette.popupBg },
--     PmenuSel = { fg = palette.fujiWhite, bg = palette.popupSel, bold = true },
--     PmenuSbar = { bg = palette.scrollbarBg },
--     PmenuThumb = { bg = palette.scrollbarThumb },

--     -- Selection
--     Visual = { bg = palette.selectionBg },
--     VisualNOS = { bg = palette.selectionBg },

--     -- Search highlighting
--     Search = { fg = palette.sumiInk0, bg = palette.carpYellow, bold = true },
--     IncSearch = { fg = palette.sumiInk0, bg = palette.waveAqua1 },

--     -- Cursor and cursor line
--     Cursor = { fg = palette.sumiInk0, bg = palette.fujiWhite },
--     CursorLine = { bg = "#2D2C28" },  -- Slightly warm cursor line

--     -- Fold column
--     Folded = { fg = palette.fujiWhite, bg = "#32312D" },
--     FoldColumn = { fg = palette.sumiInk4, bg = "NONE" },

--     -- Status line
--     StatusLine = { fg = palette.oldWhite, bg = "#32312D" },
--     StatusLineNC = { fg = palette.fujiWhite, bg = "#2A2925" },

--     -- Tab line
--     TabLine = { fg = palette.fujiWhite, bg = "#2A2925" },
--     TabLineSel = { fg = palette.oldWhite, bg = "#3D3C37", bold = true },
--     TabLineFill = { bg = "#252521" },

--     -- Split dividers
--     VertSplit = { fg = palette.borderColor, bg = "NONE" },

--     -- Floating windows
--     NormalFloat = { fg = palette.fujiWhite, bg = 'none' },
--     FloatBorder = { fg = palette.borderColor, bg = 'none' },

--     -- Diff highlighting
--     DiffAdd = { bg = "#3B4439" },
--     DiffChange = { bg = "#39434D" },
--     DiffDelete = { bg = "#4D3339" },
--     DiffText = { bg = "#44513A" },

--     -- Completion (nvim-cmp)
--     CmpItemAbbr = { fg = palette.fujiWhite },
--     CmpItemAbbrMatch = { fg = palette.carpYellow, bold = true },
--     CmpItemAbbrMatchFuzzy = { fg = palette.carpYellow, bold = true },
--     CmpItemKind = { fg = palette.springBlue },
--     CmpItemMenu = { fg = palette.springViolet1 },

--     -- Nvim-tree
--     NvimTreeNormal = { fg = palette.fujiWhite, bg = 'none' },
--     NvimTreeEndOfBuffer = { fg = palette.sumiInk1, bg = 'none' },
--     NvimTreeFolderName = { fg = palette.springBlue },
--     NvimTreeOpenedFolderName = { fg = palette.springBlue, bold = true },

--     -- Telescope
--     TelescopeMatching = { fg = palette.carpYellow, bold = true },
--     TelescopeNormal = { bg = 'none' },
--     TelescopeBorder = { fg = palette.borderColor, bg = 'none' },
--     TelescopeSelection = { fg = palette.fujiWhite, bg = 'none' },
--     TelescopePromptPrefix = { fg = palette.surimiOrange },

--     -- LSP
--     LspReferenceText = { bg = "#3D3C37" },
--     LspReferenceRead = { bg = "#3D3C37" },
--     LspReferenceWrite = { bg = "#3D3C37" },
--     LspSignatureActiveParameter = { fg = palette.carpYellow, bold = true },

--     -- Diagnostics floating
--     DiagnosticFloatingError = { fg = palette.peachRed },
--     DiagnosticFloatingWarn = { fg = palette.carpYellow },
--     DiagnosticFloatingInfo = { fg = palette.waveAqua1 },
--     DiagnosticFloatingHint = { fg = palette.dragonBlue },

--     -- Indent-blankline
--     IndentBlanklineChar = { fg = "#3D3C37" },
--     IndentBlanklineContextChar = { fg = "#5D5C53" },
--   }
-- end,

-- setup must be called before loading
vim.cmd("colorscheme kanagawa")
