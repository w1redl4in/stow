local luasnip = require("luasnip")
local insert_map = require("util/insert_map")
local react_snippets = require("snippets/react")
local typescript_snippets = require("snippets/typescript")

luasnip.snippets = {
  react = react_snippets,
  typescriptreact = react_snippets,
  typescript = typescript_snippets
}

insert_map("<c-j>", "<cmd>lua require'luasnip'.jump(1)<CR>")
insert_map("<c-k>", "<cmd>lua require'luasnip'.jump(-1)<CR>")
