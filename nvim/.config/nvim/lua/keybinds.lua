local normal_map = require("util/normal_map")
local term_map = require("util/term_map")

vim.g.mapleader = " "

-- splits
normal_map("ss", ":split<CR>")
normal_map("sv", ":vsplit<CR>")
normal_map("sj", "<C-w>j")
normal_map("sk", "<C-w>k")
normal_map("sh", "<C-w>h")
normal_map("sl", "<C-w>l")

-- tabs
normal_map("tn", ":tabnew<CR>")
normal_map("tc", ":tabclose<CR>")
normal_map("tl", ":tabnext<CR>")
normal_map("th", ":tabprevious<CR>")

-- buffers
normal_map("<leader>k", ":bn!<CR>")
normal_map("<leader>j", ":bp!<CR>")
normal_map("<leader>x", ":Sayonara!<CR>")

-- misc.
normal_map("<leader>s", ":w<CR>")
normal_map("<leader>q", ":Sayonara<CR>")
normal_map("<leader>/", ":noh<CR>")
normal_map("<leader>;", ":set list!<CR>")
normal_map("<leader>8", ":set cc=80<CR>")
normal_map("<leader>0", ":set cc=0<CR>")
