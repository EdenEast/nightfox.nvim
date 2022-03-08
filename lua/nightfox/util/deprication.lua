local M = {
  checked_deprication = false,
}

function M.check_deprication(opts)
  if M.checked_deprication then
    return
  end

  local dep = require("nightfox.lib.deprication")

  if opts.fox then
    dep.write(
      "  ",
      { "fox", "WarningMsg" },
      " has been removed. Use vim's buildin ",
      { ":colorscheme", "WarningMsg" },
      " command to select your fox's style."
    )
  end

  if opts.colors then
    dep.write(
      "  ",
      { "colors", "WarningMsg" },
      " has been replaced by ",
      { "pallets", "WarningMsg" },
      " See ",
      { ":h nightfox-pallets", "WarningMsg" },
      " for more info"
    )
  end

  if opts.hlgroups then
    dep.write(
      "  ",
      { "hlgroups", "WarningMsg" },
      " has been replaced by ",
      { "groups", "WarningMsg" },
      " See ",
      { ":h nightfox-groups", "WarningMsg" },
      " for more info"
    )
  end

  M.checked_deprication = true
  dep.register_event()
end

return M
