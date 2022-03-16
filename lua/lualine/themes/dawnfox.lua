local colors = require("nightfox.colors").load()

local nightfox = {}

nightfox.normal = {
  a = { bg = colors.blue_br, fg = colors.white },
  b = { bg = colors.white_dm, fg = colors.blue_br },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

nightfox.insert = {
  a = { bg = colors.green, fg = colors.white },
  b = { bg = colors.white, fg = colors.green },
}

nightfox.command = {
  a = { bg = colors.yellow, fg = colors.black },
  b = { bg = colors.white_dm, fg = colors.yellow_dm },
}

nightfox.visual = {
  a = { bg = colors.magenta, fg = colors.white },
  b = { bg = colors.white_dm, fg = colors.magenta },
}

nightfox.replace = {
  a = { bg = colors.red, fg = colors.white },
  b = { bg = colors.white_dm, fg = colors.red },
}

nightfox.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.white_dm, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.white_dm },
}

return nightfox
