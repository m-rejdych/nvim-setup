local prettier = {
  function()
    return {
      exe = "prettier",
      args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote', '--tab-width 2', '--trailing-comma all'},
      stdin = true
    }
  end
}

local rust_fmt = {
  function()
    return {
      exe = "rustfmt",
      args = {"--emit=stdout"},
      stdin = true
    }
  end
}

require('formatter').setup({
  filetype = {
    javascript = prettier,
    javascriptreact = prettier,
    ["javascript.jsx"] = rettier,
    typescript = prettier,
    typescriptreact = prettier,
    ["typescript.tsx"] = prettier,
    json = prettier,
    css = prettier,
    rust = rust_fmt,
  },
})

vim.cmd('nnoremap <silent><leader>ff <cmd>Format<CR>')
vim.cmd('nnoremap <silent><leader>fd <cmd>DartFmt<CR>')
