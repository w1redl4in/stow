local luasnip = require("luasnip")

local snippets = {
  -- public async method
  luasnip.s(
    {
      trig = "ameth",
      name = "public async method"
    },
    {
      luasnip.t("public async "),
      luasnip.i(1),
      luasnip.t("("),
      luasnip.i(2),
      luasnip.t("): Promise<"),
      luasnip.i(3, "void"),
      luasnip.t("> {"),
      luasnip.t({
          "",
          "  throw new Error('not implemented');"
        }),
      luasnip.i(0),
      luasnip.t({
          "",
          "}"
        })
    }
    ),
  -- private async method
  luasnip.s(
    {
      trig = "pameth",
      name = "private async method"
    },
    {
      luasnip.t("private async "),
      luasnip.i(1),
      luasnip.t("("),
      luasnip.i(2),
      luasnip.t("): Promise<"),
      luasnip.i(3, "void"),
      luasnip.t("> {"),
      luasnip.t({
          "",
          "  throw new Error('not implemented');"
        }),
      luasnip.i(0),
      luasnip.t({
          "",
          "}"
        })
    }
    ),
  -- public method
  luasnip.s(
    {
      trig = "meth",
      name = "public method"
    },
    {
      luasnip.t("public "),
      luasnip.i(1),
      luasnip.t("("),
      luasnip.i(2),
      luasnip.t("): "),
      luasnip.i(3, "void"),
      luasnip.t(" {"),
      luasnip.t({
          "",
          "  throw new Error('not implemented');"
        }),
      luasnip.i(0),
      luasnip.t({
          "",
          "}"
        })
    }
    ),
  -- private method
  luasnip.s(
    {
      trig = "pmeth",
      name = "private method"
    },
    {
      luasnip.t("public "),
      luasnip.i(1),
      luasnip.t("("),
      luasnip.i(2),
      luasnip.t("): "),
      luasnip.i(3, "void"),
      luasnip.t(" {"),
      luasnip.t({
          "",
          "  throw new Error('not implemented');"
        }),
      luasnip.i(0),
      luasnip.t({
          "",
          "}"
        })
    }
    )
}

return snippets
