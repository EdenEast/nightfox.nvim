local M = {}

function M.get(spec, config, opts)
  return {
    LazyButtonActive = { link = "TabLineSel" },
    LazyDimmed = { link = "LineNr" },
    LazyProp = { link = "LineNr" },
  }
end

return M
