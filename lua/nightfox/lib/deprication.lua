local M = {
  _list = { { "nightfox.nvim\n", "Question" }, { "The following has been " }, { "depricated:\n", "WarningMsg" } },
  _count = 0,
}

function M.write(...)
  for _, e in ipairs({ ... }) do
    table.insert(M._list, type(e) == "string" and { e } or e)
  end

  M._list[#M._list][1] = M._list[#M._list][1] .. "\n"
  M._count = M._count + 1
end

function M.register_event()
  if M._count > 0 then
    vim.cmd([[
      augroup NightfoxDepricationMessage
        au!
        autocmd VimEnter * ++once lua require("nightfox.lib.deprication").flush()
      augroup END
    ]])
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
