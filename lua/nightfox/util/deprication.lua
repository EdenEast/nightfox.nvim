local M = {}

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

  local function check_opt(name, o)
    if opts[name] then
      local replace = o.replace or string.format("options.%s", name)
      local help = o.help or "nightfox"
      dep.write(
        "  ",
        { name, "WarningMsg" },
        " has been replaced by ",
        { replace, "WarningMsg" },
        ". See ",
        { ":h " .. help, "WarningMsg" },
        " for more info."
      )
    end
  end

  check_opt("transparent")
  check_opt("terminal_colors")
  check_opt("alt_nc", { replaced = "options.dim_inactive" })
  check_opt("colors", { replace = "pallets" })
  check_opt("hlgroups", { replace = "groups" })
end

return M
