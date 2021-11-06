local prettier = {
  function()
    return {
      exe = "prettier",
      args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote'},
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
