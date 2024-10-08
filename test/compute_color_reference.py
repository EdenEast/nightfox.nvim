"""Convert Linear sRGB to LMS using Smith & Pokorny (1975) 2-deg cone fundamentals."""
from __future__ import annotations
from coloraide.cat import WHITES
from coloraide.spaces.okhsl import Okhsl
from coloraide.spaces.okhsv import Okhsv
from coloraide.spaces import Space
from coloraide import algebra as alg
from coloraide.types import Vector
from coloraide.channels import Channel
from coloraide import Color
import math

# LMS color space 
#
# Color space is derived using Smith & Pokorny (1975) 2-deg cone fundamentals as it
# is more commonly used in regards to CVD simulations. This is based on 
# Vienot et al. (1999) algorithm.
#
# Reference implementation:
# https://github.com/facelessuser/coloraide/discussions/282#discussioncomment-5211945
class LMS(Space):
    """The LMS class."""

    BASE = "srgb-linear"
    NAME = "lms"
    SERIALIZE = ("--lms",)
    CHANNELS = (
        Channel("l", 0.0, 1.0),
        Channel("m", 0.0, 1.0),
        Channel("s", 0.0, 1.0)
    )
    CHANNEL_ALIASES = {
        "long": "l",
        "medium": "m",
        "short": "s"
    }
    WHITE = WHITES['2deg']['D65']

    # Smith & Pokorny (1975) 2-deg cone fundamentals
    LRGB_TO_LMS = [
        [0.178824041258, 0.4351609057000001, 0.04119349692],
        [0.034556423182, 0.27155382458, 0.038671308360000003],
        [0.000299565576, 0.0018430896, 0.01467086136]
    ]

    LMS_TO_LRGB = [
        [8.094435598032371, -13.050431460496926, 11.672058453917323],
        [-1.0248505586646686, 5.401931309674973, -11.361471490598712],
        [-0.03652974715933318, -0.412162807001268, 69.35132423820858]
    ]

    def to_base(self, coords: Vector) -> Vector:
        """To XYZ."""

        return alg.dot(self.LMS_TO_LRGB, coords, dims=alg.D2_D1)

    def from_base(self, coords: Vector) -> Vector:
        """From XYZ."""

        return alg.dot(self.LRGB_TO_LMS, coords, dims=alg.D2_D1)

Color.register(LMS())
Color.register(Okhsl())
Color.register(Okhsv())


def tolist(c):
    return [0 if math.isnan(c[0]) else c[0], c[1], c[2]]


# Generate all colors in the srgb spectrum
list = []

# 257 to make it inclusive to 0xff
for r in range(0, 257, 16):
    for g in range(0, 257, 16):
        for b in range(0, 257, 16):
            c = Color('srgb', [r/255.0, g/255.0, b/255.0])
            l = c.convert('srgb-linear')
            list.append({
                "hex": c.convert('srgb').to_string(hex=True),
                "srgb": tolist(c.convert("srgb")),
                "lrgb": tolist(l),
                "hsl": tolist(c.convert("hsl")),
                "hsv": tolist(c.convert("hsv")),
                "xyz": tolist(c.convert("xyz-d65")),
                "lms": tolist(c.convert("lms")),
                "oklab": tolist(c.convert("oklab")),
                "okhsl": tolist(c.convert("okhsl")),
                "okhsv": tolist(c.convert("okhsv")),
                "protanopia": tolist(l.filter("protan", method = "vienot")),
                "deuteranopia": tolist(l.filter("deutan", method = "vienot")),
                "tritanopia": tolist(l.filter("tritan", method = "brettel")),
                "protan-03": tolist(l.filter("protan", 0.3, method = "vienot")),
                "deutan-03": tolist(l.filter("deutan", 0.3, method = "vienot")),
                "tritan-03": tolist(l.filter("tritan", 0.3, method = "brettel")),
                "protan-07": tolist(l.filter("protan", 0.7, method = "vienot")),
                "deutan-07": tolist(l.filter("deutan", 0.7, method = "vienot")),
                "tritan-07": tolist(l.filter("tritan", 0.7, method = "brettel")),
            })


from os import path
this_script = path.abspath(__file__)
output = path.join(path.dirname(this_script), "reference_colors.json")
with open(output, "w") as f:
    f.write("[\n")
    total = len(list)
    for i, entry in enumerate(list):
        f.write("  {\n")
        for key, c in entry.items():
            if key == "hex":
                f.write(f'    "{key}": "{c}",\n')
            elif key == "tritan-07":
                f.write(f'    "{key}": [{c[0]}, {c[1]}, {c[2]}]\n')
            else:
                f.write(f'    "{key}": [{c[0]}, {c[1]}, {c[2]}],\n')
        if i == total - 1:
            f.write("  }\n")
        else:
            f.write("  },\n")
    f.write("]\n")
