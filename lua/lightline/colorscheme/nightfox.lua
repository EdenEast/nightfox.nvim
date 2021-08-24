local colors = require("nightfox.colors").load()

local nightfox = {}

nightfox.normal = {
  left = { { colors.black, colors.blue }, { colors.blue, colors.bg } },
  middle = { { colors.blue, colors.fg_gutter } },
  right = { { colors.fg_sidebar, colors.bg_statusline }, { colors.blue, colors.bg } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

nightfox.insert = {
  left = { { colors.black, colors.green }, { colors.blue, colors.bg } },
}

nightfox.visual = {
  left = { { colors.black, colors.magenta }, { colors.blue, colors.bg } },
}

nightfox.replace = {
  left = { { colors.black, colors.red }, { colors.blue, colors.bg } },
}

nightfox.inactive = {
  left = { { colors.blue, colors.bg_statusline }, { colors.comment, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.comment, colors.bg } },
}

nightfox.tabline = {
  left = { { colors.comment, colors.bg_highlight }, { colors.comment, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.comment, colors.bg } },
  tabsel = { { colors.blue, colors.fg_gutter }, { colors.comment, colors.bg } },
}

return nightfox
