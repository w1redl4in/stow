local normal_map = require("util/normal_map")
local term_map = require("util/term_map")

function load_floaterm_keymap()
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>n", ":FloatermNew<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>j", ":FloatermNext<CR>", { noremap = true, silent = true })
    vim.api.nvim_buf_set_keymap(0, "n", "<leader>k", ":FloatermPrev<CR>", { noremap = true, silent = true })
end

normal_map("<C-b>", ":FloatermToggle<CR>")
term_map("<C-b>", "<C-\\><C-n>:FloatermToggle<CR>")
term_map("<C-\\>", "<C-\\><C-n>")

vim.g.floaterm_width = 0.9
vim.g.floaterm_height = 0.9
vim.g.floaterm_autoinsert = true
vim.g.floaterm_wintype = 'float'

vim.cmd([[ autocmd User FloatermOpen hi FloatermBorder guibg=NONE guifg=black ]])
vim.cmd([[ autocmd FileType floaterm call v:lua.load_floaterm_keymap() ]])
