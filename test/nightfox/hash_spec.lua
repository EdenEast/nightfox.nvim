local hash = require("nightfox.lib.hash")

describe("Hash", function()
  it("should produce same result with different table order", function()
    local t1 = { Normal = { bg = "#192330", fg = "#cdcecf" } }
    local t2 = { Normal = { fg = "#cdcecf", bg = "#192330" } }
    assert.is.same(hash(t1), hash(t2))
  end)

  it("should understand booleans", function()
    local t1 = {
      transparent = false,
      terminal_colors = true,
      dim_inactive = false,
      module_default = true,
      inverse = {
        match_paren = false,
        visual = false,
        search = false,
      },
    }
    local t2 = {
      transparent = true,
      terminal_colors = true,
      dim_inactive = false,
      module_default = false,
      inverse = {
        match_paren = true,
        visual = false,
        search = false,
      },
    }
    assert.is_not.same(hash(t1), hash(t2))
  end)
end)
