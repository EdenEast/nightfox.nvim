local Color = require("nightfox.lib.color")
local assert = require("luassert")

-- stylua: ignore
local ex = {
  str  = "#3a567d",
  hex  = 0x3a567d,
  rgba = { 58, 86, 125, 1 },
  hsv  = { 214.9, 53.6, 49, 1 },
  hsl  = { 214.9, 36.6, 35.9, 1 },
}

describe("Color", function()
  describe("Constructing", function()
    it("Should construct from a css hex string", function()
      local c = Color.from_hex(ex.str)
      assert.are.same(ex.hex, c:to_hex())
      assert.are.same(ex.str, c:to_css())
    end)

    it("Should construct from rgba", function()
      local c = Color.from_rgba(unpack(ex.rgba))
      assert.are.same(ex.hex, c:to_hex())
      assert.are.same(ex.str, c:to_css())
    end)

    it("Should construct from hsv", function()
      local c = Color.from_hsv(unpack(ex.hsv))
      assert.are.same(ex.hex, c:to_hex())
      assert.are.same(ex.str, c:to_css())
    end)

    it("Should construct from hsl", function()
      local c = Color.from_hsl(unpack(ex.hsl))
      assert.are.same(ex.hex, c:to_hex())
      assert.are.same(ex.str, c:to_css())
    end)
  end)

  describe("Infer", function()
    it("Should infer creation of hex string", function()
      local c = Color(ex.str)
      assert.are.same(ex.hex, c:to_hex())
      assert.are.same(ex.str, c:to_css())
    end)

    it("Should infer from rgba components", function()
      local c = Color(Color.from_hex(ex.str):to_rgba())
      assert.are.same(ex.hex, c:to_hex())
      assert.are.same(ex.str, c:to_css())
    end)

    it("Should infer from hsv components", function()
      local c = Color(Color.from_hex(ex.str):to_hsv())
      assert.are.same(ex.hex, c:to_hex())
      assert.are.same(ex.str, c:to_css())
    end)

    it("Should infer from hsl components", function()
      local c = Color(Color.from_hex(ex.str):to_hsl())
      -- assert.are.same(ex.hex, c:to_hex())
      assert.are.same(ex.str, c:to_css())
    end)
  end)

  describe("Converting", function()
    it("Should output to css_hex", function()
      local c = Color.from_hex(ex.str)
      assert.are.same(ex.str, c:to_css())
      assert.are.same(ex.str .. "ff", c:to_css(true))
    end)

    it("Should output to rgba", function()
      local c = Color.from_hex(ex.str):to_rgba()
      assert.are.same(ex.rgba[1], c.red)
      assert.are.same(ex.rgba[2], c.green)
      assert.are.same(ex.rgba[3], c.blue)
      assert.are.same(ex.rgba[4], c.alpha)
    end)

    it("Should output to hsv", function()
      local c = Color.from_hex(ex.str):to_hsv()
      assert.are.near(ex.hsv[1], c.hue, 0.1)
      assert.are.near(ex.hsv[2], c.saturation, 0.1)
      assert.are.near(ex.hsv[3], c.value, 0.1)
    end)

    it("Should output to hsl", function()
      local c = Color.from_hex(ex.str):to_hsl()
      assert.are.near(ex.hsl[1], c.hue, 0.1)
      assert.are.near(ex.hsl[2], c.saturation, 0.1)
      assert.are.near(ex.hsl[3], c.lightness, 0.1)
    end)

    it("Should be able to be tostring", function()
      local c = Color.from_hex(ex.str)
      assert.are.same(ex.str, tostring(c))
    end)
  end)

  describe("Manipulate", function()
    it("Should blend two colors together", function()
      local one = Color.from_hex(ex.str)
      local two = Color.from_hex("#7d3a65")

      local blend = one:blend(two, 0.5):to_rgba()
      assert.are.same(91, blend.red)
      assert.are.same(72, blend.green)
      assert.are.same(113, blend.blue)
    end)

    it("Should shade color", function()
      local c = Color.from_hex(ex.str)
      assert.are.same(Color.WHITE:to_hex(), c:shade(1):to_hex())
      assert.are.same(Color.BLACK:to_hex(), c:shade(-1):to_hex())
      assert.are.same("#617897", c:shade(0.2):to_css())
      assert.are.same("#2e4564", c:shade(-0.2):to_css())
    end)

    it("Should brighten color", function()
      local c = Color.from_hex(ex.str)
      assert.are.same("#486b9c", c:brighten(12):to_css())
      assert.are.same("#2c415e", c:brighten(-12):to_css())
    end)

    it("Should lighten color", function()
      local c = Color.from_hex(ex.str)
      assert.are.same("#4d73a7", c:lighten(12):to_css())
      assert.are.same("#273953", c:lighten(-12):to_css())
    end)

    it("Should saturate color", function()
      local c = Color.from_hex(ex.str)
      assert.are.same("#274b7d", c:saturate(15):to_css())
      assert.are.same("#4d617d", c:saturate(-15):to_css())
    end)

    it("Should rotate hue color", function()
      local c = Color.from_hex(ex.str)
      assert.are.same("#3a457d", c:rotate(15):to_css())
      assert.are.same("#3a677d", c:rotate(-15):to_css())
    end)
  end)
end)
