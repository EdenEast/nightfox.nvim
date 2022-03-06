local Shade = require("nightfox.lib.shade")
local assert = require("luassert")

local ex = {
  base = "#3a567d",
  bright = "#617897",
  dim = "#2e4564"
}

describe("Shade", function()
  describe("Constructing", function()
    it("Should construct from hex strings", function()
      local s = Shade.new(ex.base, ex.bright, ex.dim)
      assert.are.same(ex.base, tostring(s.base))
      assert.are.same(ex.base, tostring(s()))
      assert.are.same(ex.bright, tostring(s.bright))
      assert.are.same(ex.dim, tostring(s.dim))
    end)

    it("Should construct from numbers strings", function()
      local s = Shade.new(ex.base, 0.2, -0.2)
      assert.are.same(ex.base, tostring(s.base))
      assert.are.same(ex.base, tostring(s()))
      assert.are.same(ex.bright, tostring(s.bright))
      assert.are.same(ex.dim, tostring(s.dim))
    end)
  end)
end)
