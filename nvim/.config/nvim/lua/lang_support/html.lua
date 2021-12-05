local handle_lsp_attach = require("util/handle_lsp_attach")
local nvim_lsp = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.html.setup({
    on_attach = handle_lsp_attach,
    capabilites = capabilities
  })
