lua << EOF
-- Useful when debugging
if vim.g.nightfox_debug then
  require("nightfox.util.reload")()
end

require("nightfox.config").set_fox("gruvfox")
require("nightfox").load()
EOF
