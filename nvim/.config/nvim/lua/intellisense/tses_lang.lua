local intel_functions = require("intellisense/functions")
local nvim_lsp = require("lspconfig")
local cmp_lsp = require("cmp_nvim_lsp")
local dls_config = require("diagnosticls-configs")
local dls_eslint = require("diagnosticls-configs/linters/eslint")

local capabilities = cmp_lsp.update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
  )

dls_config.init({
    on_attach = intel_functions.handle_lsp_attach
  })

dls_config.setup({
    ["javascript"] = {
      linter = dls_eslint
    },
    ["typescript"] = {
      linter = dls_eslint
    },
    ["typescriptreact"] = {
      linter = dls_eslint
    },
  })

nvim_lsp.tsserver.setup({
    capabilities = tsserver_capabilites,
    on_attach = intel_functions.handle_lsp_attach
  })
