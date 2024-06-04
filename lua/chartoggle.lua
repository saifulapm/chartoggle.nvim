local M = {}

M.toggle = function(character)
  local api = vim.api
  local line = api.nvim_get_current_line()
  local commentstring = vim.api.nvim_get_option_value('commentstring', { buf = 0 }):gsub('%%s', '')
  local escaped_commentstring = commentstring:gsub('([%(%)%.%%%+%-%*%?%[%^%$])', '%%%1')
  local code, comment = line:match('^(.*)' .. escaped_commentstring .. '(.*)$')

  if code then
    code = code:gsub('%s*$', '') -- remove trailing spaces
    local last_char = code:sub(-1)

    if last_char == character then
      code = code:sub(1, #code - 1)
    else
      code = code .. character
    end

    line = code .. ' ' .. commentstring .. (comment or '')
  else
    line = line:gsub('%s*$', '') -- remove trailing spaces
    local last_char = line:sub(-1)

    if last_char == character then
      line = line:sub(1, #line - 1)
    else
      line = line .. character
    end
  end

  return api.nvim_set_current_line(line)
end

M.setup = function(options)
  for _, key in ipairs(options.keys) do
    vim.keymap.set('n', options.leader .. key, function() M.toggle(key) end, { desc = 'Toggle ' .. key })
  end
end

return M
