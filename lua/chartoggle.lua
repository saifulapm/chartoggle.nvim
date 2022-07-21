local M = {}

M.toggle = function (character)
  local api = vim.api
  local delimiters = { ',', ';' }
  local line = api.nvim_get_current_line()
  local last_char = line:sub(-1)

  if last_char == character then
    return api.nvim_set_current_line(line:sub(1, #line - 1))
  elseif vim.tbl_contains(delimiters, last_char) then
    return api.nvim_set_current_line(line:sub(1, #line - 1) .. character)
  else
    return api.nvim_set_current_line(line .. character)
  end
end

M.map = function(mode, target, source, opts)
    vim.keymap.set(mode, target, source, opts)
end

M.setup = function (options)
  for _, key in ipairs(options.keys) do
    M.map('n', options.leader .. key, ':lua require("chartoggle").toggle("' .. key .. '")<CR>', { noremap = true, silent = true })
  end
end

return M
