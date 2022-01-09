local function index_of(array, value)
    for i, v in ipairs(array) do
        if v == value then
            return i
        end
    end
    return nil
end

local function floaterm_info()
  local buffers = vim.api.nvim_eval([[floaterm#buflist#gather()]])
  local buffer_count = table.getn(buffers)
  local buffer_current = vim.api.nvim_eval([[floaterm#buflist#curr()]])
  local buffer_current_index = index_of(buffers, buffer_current)

  return [[floaterm: (]] .. buffer_current_index .. [[/]] .. buffer_count .. [[)]]
end

return floaterm_info
