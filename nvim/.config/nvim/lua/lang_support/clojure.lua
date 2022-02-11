local nvim_lsp = require("lspconfig")
local handle_lsp_attach = require("util/handle_lsp_attach")

nvim_lsp.clojure_lsp.setup({
    on_attach = handle_lsp_attach,
  })
