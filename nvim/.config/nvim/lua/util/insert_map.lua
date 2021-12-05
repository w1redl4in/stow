function insert_map(key, bind)
  vim.api.nvim_set_keymap("i", key, bind, { noremap = true, silent = true })
end

return insert_map
