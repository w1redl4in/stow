local nvim_lsp = require("lspconfig")

nvim_lsp.elixirls.setup({
    cmd = { "/home/yves/documents/elixir_ls/language_server.sh" }
})
