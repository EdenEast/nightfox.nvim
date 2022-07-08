local M = {
  _list = { { "nightfox.nvim\n", "Question" }, { "The following has been " }, { "Deprecated:\n", "WarningMsg" } },
  _has_registered = false,
}

function M.write(...)
  for _, e in ipairs({ ... }) do
    table.insert(M._list, type(e) == "string" and { e } or e)
  end

  M._list[#M._list][1] = M._list[#M._list][1] .. "\n"

  if not M._has_registered then
    vim.cmd([[
      augroup NightfoxdeprecationMessage
        au!
        autocmd VimEnter * ++once lua require("nightfox.lib.deprecation").flush()
      augroup END
    ]])
    M._has_registered = true
  end
end

function M.flush()
  M.write("See ", { "https://github.com/EdenEast/nightfox.nvim ", "Title" }, "for more information.")

  if vim.fn.has("nvim") then
    vim.api.nvim_echo(M._list, true, {})
  else
    local msg = {}
    for _, v in ipairs(M._list) do
      table.insert(msg, v[1])
    end
    print(table.concat(msg, ""))
  end
end

return M
