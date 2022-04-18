-- NOTE: If you have impatient.nvim make sure that you temporally disable it as that
-- effects the results of this benchmark.

local benchmark = require("plenary.profile").benchmark
local fmt = string.format

local bench_iter = 100
local process_iter = 20

local function rep(n, char)
  local s = ""
  char = char or "-"
  for _ = 1, n do
    s = s .. char
  end
  return s
end

local function process(iterations)
  local function execute(modname)
    package.loaded[modname] = nil
    require(modname)
  end

  local nvim = benchmark(iterations, execute, "nightfox.precompiled.nvim.nightfox_compiled")
  local viml = benchmark(iterations, execute, "nightfox.precompiled.viml.nightfox_compiled")

  local difference = math.abs(nvim - viml)

  return nvim, viml, difference
end

local fmt_str = "| %-12s | %-12s | %-6s | %-12s |"
local lines = {}
table.insert(lines, fmt(fmt_str, "nvim", "viml", "winner", "difference"))
table.insert(lines, fmt(fmt_str, rep(12), rep(12), rep(6), rep(12)))
for _ = 1, process_iter do
  local nvim, viml, difference = process(bench_iter)
  local winner = viml > nvim and "nvim" or "viml"
  table.insert(lines, fmt(fmt_str, nvim, viml, winner, difference))
end

print(table.concat(lines, "\n"))

-- | nvim         | viml         | winner | difference   |
-- | ------------ | ------------ | ------ | ------------ |
-- | 0.13587727   | 0.14480916   | nvim   | 0.00893189   |
-- | 0.126019095  | 0.144379504  | nvim   | 0.018360409  |
-- | 0.121695834  | 0.145396634  | nvim   | 0.0237008    |
-- | 0.126382063  | 0.147077075  | nvim   | 0.020695012  |
-- | 0.126739153  | 0.15228737   | nvim   | 0.025548217  |
-- | 0.123327316  | 0.144052505  | nvim   | 0.020725189  |
-- | 0.120775092  | 0.144650431  | nvim   | 0.023875339  |
-- | 0.122740701  | 0.144309368  | nvim   | 0.021568667  |
-- | 0.120412961  | 0.142972085  | nvim   | 0.022559124  |
-- | 0.120056512  | 0.143038069  | nvim   | 0.022981557  |
-- | 0.121483176  | 0.143661078  | nvim   | 0.022177902  |
-- | 0.121731856  | 0.146417584  | nvim   | 0.024685728  |
-- | 0.124857722  | 0.143044062  | nvim   | 0.01818634   |
-- | 0.121358067  | 0.142138951  | nvim   | 0.020780884  |
-- | 0.121309499  | 0.146483703  | nvim   | 0.025174204  |
-- | 0.120200838  | 0.143400906  | nvim   | 0.023200068  |
-- | 0.121330985  | 0.143589931  | nvim   | 0.022258946  |
-- | 0.122106515  | 0.143682243  | nvim   | 0.021575728  |
-- | 0.126486296  | 0.14283298   | nvim   | 0.016346684  |
-- | 0.120689742  | 0.143274019  | nvim   | 0.022584277  |
