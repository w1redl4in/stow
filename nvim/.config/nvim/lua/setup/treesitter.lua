local treesitter = require("nvim-treesitter.configs")

treesitter.setup({
    ensure_installed = "maintained",
    ignore_install = {},
    highlight = {
      enable = false,
      disable = {},
      additional_vim_regex_highlighting = false,
    },
  })
