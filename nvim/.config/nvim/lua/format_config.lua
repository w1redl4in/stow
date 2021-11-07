local format = require("format")

format.setup({
    ["*"] = {
      { cmd = { "sed -i 's/[ \t]*$//'" } }
    },
    javascript = {
      { cmd = { "prettier -w" } }
    },
    typescript = {
      { cmd = { "prettier -w" } }
    },
    typescriptreact = {
      { cmd = { "prettier -w" } }
    },
  })

vim.api.nvim_set_keymap("n", "<leader>f", ":Format!<CR>", { noremap = true, silent = true })
