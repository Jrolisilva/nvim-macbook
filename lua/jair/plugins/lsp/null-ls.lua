-- lsp/null-ls.lua
local null_ls = require("null-ls")

-- formatação e linting
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
  sources = {
      formatting.prettier,
      diagnostics.eslint_d,
  },
  on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
          vim.api.nvim_create_autocmd("BufWritePre", {
              buffer = bufnr,
              callback = function()
                  vim.lsp.buf.format({ bufnr = bufnr })
              end,
          })
      end
  end,
})
