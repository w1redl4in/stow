vim.g.mapleader = " "

-- splits
vim.api.nvim_set_keymap("n", "ss", ":split<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sv", ":vsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sj", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sk", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sh", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "sl", "<C-w>l", { noremap = true, silent = true })

-- tabs
vim.api.nvim_set_keymap("n", "tn", ":tabnew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "tc", ":tabclose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "tl", ":tabnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "th", ":tabprevious<CR>", { noremap = true, silent = true })

-- buffers
vim.api.nvim_set_keymap("n", "<leader>k", ":bn!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>j", ":bp!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>x", ":Sayonara!<CR>", { noremap = true, silent = true })

-- terminal
vim.api.nvim_set_keymap("n", "<leader>`", ":term<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-\\>", "<C-\\><C-n>", { noremap = true, silent = true })

-- misc.
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>q", ":Sayonara<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>/", ":noh<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>;", ":set list!<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>8", ":set cc=80<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>0", ":set cc=0<CR>", { noremap = true, silent = true })
