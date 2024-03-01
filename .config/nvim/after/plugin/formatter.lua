local prettier = {
  function()
    return {
      exe = "prettier",
      args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote', '--tab-width 2', '--trailing-comma all', '--print-width 100'},
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
  },
})

-- Prettier and DartFmt
vim.cmd('nnoremap <silent><leader>fp <cmd>Format<CR>')
vim.cmd('nnoremap <silent><leader>fd <cmd>DartFmt<CR>')
vim.cmd('nnoremap <silent><leader>fe <cmd>:EslintFixAll<CR>')
