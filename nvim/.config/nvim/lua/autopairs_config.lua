local autopairs = require("nvim-autopairs")
local cmp = require("cmp")

cmp.setup({
  map_cr = true,
  map_complete = true,
  auto_select = true,
  insert = false,
  map_char = {
    all = "(",
    tex = "{"
  }
})

autopairs.setup()
