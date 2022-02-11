local packer = require("packer")
local packer_util = require("packer/util")

vim.cmd([[packadd packer.nvim]])

function packer_startup(use)
  use "wbthomason/packer.nvim"
  use "tpope/vim-surround"
  use "tpope/vim-repeat"
  use "numToStr/Comment.nvim"
  use "morhetz/gruvbox"
  use "nikolvs/vim-sunbather"
  use "EdenEast/nightfox.nvim"
  use {
    "Shougo/defx.nvim",
    run = "vim.cmd([[UpdateRemotePlugins]])"
  }
  use "kristijanhusak/defx-git"
  use "voldikss/vim-floaterm"
  use "editorconfig/editorconfig-vim"
  use "sheerun/vim-polyglot"
  use "vim-test/vim-test"
  use {
    "nvim-treesitter/nvim-treesitter",
    run = "vim.cmd([[TSUpdate]])"
  }
  use "windwp/nvim-autopairs"
  use "nvim-lua/popup.nvim"
  use "nvim-lua/plenary.nvim"
  use { "nvim-telescope/telescope.nvim" }
  use {
    "hoob3rt/lualine.nvim",
    requires = {"kyazdani42/nvim-web-devicons", opt = true}
  }
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "saadparwaiz1/cmp_luasnip"
  use "L3MON4D3/LuaSnip"
  use "lukas-reineke/format.nvim"
  use "mhinz/vim-sayonara"
  use "vimwiki/vimwiki"
  use "xianzhon/vim-code-runner"
  use "iamcco/markdown-preview.nvim"
  use "catppuccin/nvim"
end

local packer_config = {
  display = {
    open_fn = function()
      return packer_util.float({ border = 'single' })
    end
  }
}

return packer.startup({
    packer_startup,
    config = packer_config
  })
