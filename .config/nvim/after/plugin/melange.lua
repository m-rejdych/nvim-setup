-- Apply colorscheme
vim.cmd.colorscheme('melange')

-- Set Normal background to none
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })

-- Set NormalFloat background to none
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })

-- Set NormalBorder (or FloatBorder) background to none
vim.api.nvim_set_hl(0, "NormalBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#ff5555", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = "#ff5555", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = "#ff5555", undercurl = true })
