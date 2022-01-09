require("plugins")
require("keybinds")
require("lang_support")
require("snippets")
require("setup/telescope")
require("setup/vimtest")
require("setup/floaterm")
require("setup/defx")
require("setup/lualine")
require("setup/autopairs")
require("setup/treesitter")
require("setup/completion")
require("setup/format")
require("setup/vimwiki")
require("setup/comment")

-- ui configuration
vim.g.fillchars = "vim.g.fillchars" .. "vert:\\|"
vim.o.signcolumn = "yes"
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.listchars = "eol:$,tab:>-,space:_,lead:_,trail:_,extends:>,precedes:<,nbsp:&"
vim.o.hidden = true
vim.cmd([[ set nowrap ]])
vim.cmd([[ set clipboard=unnamed,unnamedplus ]])

-- indentation configuration
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- colors configuration
vim.g.termguicolors = true
vim.g.background = "light"
vim.g.t_8f = "ESC[38;2;%lu;%lu;%lum"
vim.g.t_8b = "ESC[48;2;%lu;%lu;%lum"
-- cool themes: nightfox sunbather gruvbox
vim.cmd([[ colorscheme dayfox ]])
vim.cmd([[ hi VertSplit guibg=NONE guifg=fg ]])

-- terminal configuration
vim.cmd([[ autocmd TermOpen * setlocal nonumber norelativenumber ]])
vim.cmd([[ autocmd BufEnter term://* setlocal nonumber norelativenumber ]])
vim.cmd([[ autocmd TermOpen * set bufhidden=hide ]])
