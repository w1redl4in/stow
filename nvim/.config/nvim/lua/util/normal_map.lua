function normal_map(key, bind)
  vim.api.nvim_set_keymap("n", key, bind, { noremap = true, silent = true })
end

return normal_map
