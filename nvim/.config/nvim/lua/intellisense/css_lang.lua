local intel_functions = require("intellisense/functions")
local nvim_lsp = require("lspconfig")

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.cssls.setup {
  capabilities = capabilities,
  on_attach = intel_functions.handle_lsp_attach
}
