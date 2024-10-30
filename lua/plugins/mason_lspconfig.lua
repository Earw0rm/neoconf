local on_attach = function(_, bufnr)
  local opts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, opts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
end

return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    require("mason-lspconfig").setup {
      ensure_installed = { "clangd" } 
    }
    require("lspconfig").clangd.setup {
        on_attach = on_attach,
    }
  end
}

