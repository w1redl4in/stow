local luasnip = require("luasnip")

local snippets = {
  -- useState snippet
  luasnip.s(
    {
      trig = "us",
      name = "useState"
    },
    {
      luasnip.t("const ["),
      luasnip.i(1),
      luasnip.t(", "),
      luasnip.f(
          function(args)
            print(args)
            local capitalized_state = args[1][1]:gsub("^%l", string.upper)
            return "set" .. capitalized_state
          end,
          {1}
      ),
      luasnip.t("] = useState("),
      luasnip.i(2),
      luasnip.t(")")
    }
  )
}

return snippets
