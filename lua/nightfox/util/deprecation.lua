local M = {
  checked_deprecation = false,
}

function M.check_deprecation(opts)
  if M.checked_deprecation then
    return
  end

  local dep = require("nightfox.lib.deprecation")

  if opts.fox then
    dep.write(
      "  ",
      { "fox", "WarningMsg" },
      " has been removed. Use vim's builtin ",
      { ":colorscheme", "WarningMsg" },
      " command to select your fox's style."
    )
  end

  if opts.pallets then
    dep.write(
      "  ",
      { "pallet", "WarningMsg" },
      " has been changed to use the correct spelling ",
      { "palette", "WarningMsg" }
    )
  end

  local function check_opt(name, o)
    if opts[name] then
      local replace = o and o.replace or string.format("options.%s", name)
      local help = o and o.help or "nightfox"
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
  check_opt("styles")
  check_opt("inverse")
  check_opt("alt_nc", { replace = "options.dim_inactive" })
  check_opt("colors", { replace = "palettes" })
  check_opt("hlgroups", { replace = "groups" })

  if opts.groups then
    local collect = require("nightfox.lib.collect")
    local foxes = require("nightfox.palette").foxes
    local invalid = false
    for key, _ in pairs(opts.groups) do
      if not collect.contains(foxes, key) and key ~= "all" then
        invalid = true
        break
      end
    end

    if invalid then
      dep.write(
        "  ",
        { "groups", "WarningMsg" },
        " is now per style. Use ",
        { "all", "WarningMsg" },
        " to apply for every style."
      )
    end
  end

  M.checked_deprecation = true
end

return M
