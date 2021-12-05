local handle_lsp_attach = require("util/handle_lsp_attach")
local nvim_lsp = require("lspconfig")
local cmp_lsp = require("cmp_nvim_lsp")

local capabilities = cmp_lsp.update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
  )

nvim_lsp.tsserver.setup({
    capabilities = tsserver_capabilites,
    on_attach = handle_lsp_attach
  })

nvim_lsp.eslint.setup({})
