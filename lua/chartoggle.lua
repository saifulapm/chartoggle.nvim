local M = {}

M.toggle = function (char)
  local fn = vim.fn
  local line = fn.getline '.'
  local newline = ''

  if char == string.sub(line, #line) then
    newline = line:sub(1, -2)
  else
    newline = line .. char
  end

  return fn.setline('.', newline)
end

M.map = function(mode, target, source, opts)
    vim.api.nvim_set_keymap(mode, target, source, opts)
end

M.setup = function (options)
  for _, key in ipairs(options.keys) do
    M.map('n', options.leader .. key, ':lua require("chartoggle").toggle("' .. key .. '")<CR>', { noremap = true, silent = true })
  end
end

return M
