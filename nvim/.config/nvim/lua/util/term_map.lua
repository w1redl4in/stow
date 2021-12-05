function term_map(key, bind)
  vim.api.nvim_set_keymap("t", key, bind, { noremap = true, silent = true })
end

return term_map
