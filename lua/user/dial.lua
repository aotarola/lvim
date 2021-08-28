local M = {}

M.config = function()
  local status_ok, dial = pcall(require, "dial")
  if not status_ok then
    return
  end

  vim.cmd [[
  nmap <C-h> <Plug>(dial-increment)
  nmap <C-i> <Plug>(dial-decrement)
  vmap <C-h> <Plug>(dial-increment)
  vmap <C-i> <Plug>(dial-decrement)
  vmap g<C-h> <Plug>(dial-increment-additional)
  vmap g<C-i> <Plug>(dial-decrement-additional)
  ]]

  dial.augends["custom#boolean"] = dial.common.enum_cyclic {
    name = "boolean",
    strlist = { "true", "false" },
  }
  table.insert(dial.config.searchlist.normal, "custom#boolean")

  -- For Languages which prefer True/False, e.g. python.
  dial.augends["custom#Boolean"] = dial.common.enum_cyclic {
    name = "Boolean",
    strlist = { "True", "False" },
  }
  table.insert(dial.config.searchlist.normal, "custom#Boolean")
end

return M
