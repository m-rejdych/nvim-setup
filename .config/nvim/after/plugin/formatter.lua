local prettier = {
  function()
    return {
      exe = "prettier",
      args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote', '--tab-width 2', '--trailing-comma all'},
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
  },
})

vim.cmd('nnoremap <silent>ff <cmd>Format<CR>')
