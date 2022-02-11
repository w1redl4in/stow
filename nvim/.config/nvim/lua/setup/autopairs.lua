local autopairs = require("nvim-autopairs")
local autopairs_cmp = require("nvim-autopairs/completion/cmp")
local cmp = require("cmp")

cmp.event:on('confirm_done', autopairs_cmp.on_confirm_done({ map_char = { tex = '' } }))

autopairs.setup({
    disable_filetype = { "clojure", "scheme" },
})
