local M = {}

function M.get(spec, config, opts)
  opts = opts or {}

  local fg = opts.background and "bg" or "fg"
  local bg = opts.background and "fg" or "bg"
  local b = opts.harsh_bg and spec.bg0 or spec.bg1

  return {
    LeapMatch = { [fg] = spec.palette.pink:harsh(), [bg] = b },
    LeapLabelPrimary = { [fg] = spec.palette.pink:harsh(), [bg] = b },
    LeapLabelSecondary = { [fg] = spec.palette.cyan:harsh(), [bg] = b },
    LeapBackdrop = { fg = spec.syntax.comment },
  }
end

return M
