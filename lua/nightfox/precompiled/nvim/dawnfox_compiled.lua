-- This file is autogenerated by NIGHTFOX.
-- Do not make changes directly to this file.

local cmd = vim.fn.has("nvim") == 0 and vim.command or vim.cmd

if vim.g.colors_name then
  cmd("hi clear")
end

cmd("set termguicolors")
cmd("set background=light")
vim.g.colors_name = "dawnfox"

vim.api.nvim_set_hl(0, "Bold", { bold = true })
vim.api.nvim_set_hl(0, "Boolean", { link = "Number" })
vim.api.nvim_set_hl(0, "BufferCurrent", { bg = "#a8a3b3", fg = "#575279" })
vim.api.nvim_set_hl(0, "BufferCurrentIndex", { bg = "#a8a3b3", fg = "#286983" })
vim.api.nvim_set_hl(0, "BufferCurrentMod", { bg = "#a8a3b3", fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "BufferCurrentSign", { bg = "#a8a3b3", fg = "#286983" })
vim.api.nvim_set_hl(0, "BufferCurrentTarget", { bg = "#a8a3b3", fg = "#b4637a" })
vim.api.nvim_set_hl(0, "BufferInactive", { bg = "#ebe5df", fg = "#9893a5" })
vim.api.nvim_set_hl(0, "BufferInactiveIndex", { bg = "#ebe5df", fg = "#9893a5" })
vim.api.nvim_set_hl(0, "BufferInactiveMod", { bg = "#ebe5df", fg = "#f5dab6" })
vim.api.nvim_set_hl(0, "BufferInactiveSign", { bg = "#ebe5df", fg = "#ebdfe4" })
vim.api.nvim_set_hl(0, "BufferInactiveTarget", { bg = "#ebe5df", fg = "#b4637a" })
vim.api.nvim_set_hl(0, "BufferTabpage", { bg = "#ebe5df", fg = "#ebdfe4" })
vim.api.nvim_set_hl(0, "BufferTabpages", { bg = "#ebe5df" })
vim.api.nvim_set_hl(0, "BufferVisible", { bg = "#ebe5df", fg = "#575279" })
vim.api.nvim_set_hl(0, "BufferVisibleIndex", { bg = "#ebe5df", fg = "#286983" })
vim.api.nvim_set_hl(0, "BufferVisibleMod", { bg = "#ebe5df", fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "BufferVisibleSign", { bg = "#ebe5df", fg = "#286983" })
vim.api.nvim_set_hl(0, "BufferVisibleTarget", { bg = "#ebe5df", fg = "#b4637a" })
vim.api.nvim_set_hl(0, "Character", { link = "String" })
vim.api.nvim_set_hl(0, "CmpDocumentation", { bg = "#ebe5df", fg = "#575279" })
vim.api.nvim_set_hl(0, "CmpDocumentationBorder", { bg = "#ebe5df", fg = "#d0d8d8" })
vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = "#575279" })
vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#a8a3b3", strikethrough = true })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#295e73" })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#295e73" })
vim.api.nvim_set_hl(0, "CmpItemKindClass", { link = "Type" })
vim.api.nvim_set_hl(0, "CmpItemKindConstant", { link = "TSConstant" })
vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { link = "Function" })
vim.api.nvim_set_hl(0, "CmpItemKindDefault", { fg = "#625c87" })
vim.api.nvim_set_hl(0, "CmpItemKindEnum", { link = "Constant" })
vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { link = "TSField" })
vim.api.nvim_set_hl(0, "CmpItemKindEvent", { link = "Constant" })
vim.api.nvim_set_hl(0, "CmpItemKindField", { link = "TSField" })
vim.api.nvim_set_hl(0, "CmpItemKindFunction", { link = "Function" })
vim.api.nvim_set_hl(0, "CmpItemKindInterface", { link = "Constant" })
vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { link = "Identifier" })
vim.api.nvim_set_hl(0, "CmpItemKindMethod", { link = "Function" })
vim.api.nvim_set_hl(0, "CmpItemKindModule", { link = "TSNamespace" })
vim.api.nvim_set_hl(0, "CmpItemKindOperator", { link = "Operator" })
vim.api.nvim_set_hl(0, "CmpItemKindProperty", { link = "TSProperty" })
vim.api.nvim_set_hl(0, "CmpItemKindReference", { link = "Keyword" })
vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#625c87" })
vim.api.nvim_set_hl(0, "CmpItemKindStruct", { link = "Type" })
vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { link = "TSField" })
vim.api.nvim_set_hl(0, "CmpItemKindUnit", { link = "Constant" })
vim.api.nvim_set_hl(0, "CmpItemKindValue", { link = "Keyword" })
vim.api.nvim_set_hl(0, "CmpItemKindVariable", { link = "TSVariable" })
vim.api.nvim_set_hl(0, "CmpItemMenu", { link = "Comment" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#ebe0df" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#9893a5" })
vim.api.nvim_set_hl(0, "Conceal", { fg = "#bdbfc9" })
vim.api.nvim_set_hl(0, "Conditional", { fg = "#816b9a" })
vim.api.nvim_set_hl(0, "Constant", { fg = "#ca6e69" })
vim.api.nvim_set_hl(0, "CurSearch", { link = "IncSearch" })
vim.api.nvim_set_hl(0, "Cursor", { bg = "#575279", fg = "#faf4ed" })
vim.api.nvim_set_hl(0, "CursorColumn", { link = "CursorLine" })
vim.api.nvim_set_hl(0, "CursorIM", { link = "Cursor" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#ebdfe4" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bold = true, fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "DapUIBreakpointsCurrentLine", { bold = true, fg = "#618774" })
vim.api.nvim_set_hl(0, "DapUIBreakpointsDisabledLine", { fg = "#9893a5" })
vim.api.nvim_set_hl(0, "DapUIBreakpointsInfo", { fg = "#A9FF68" })
vim.api.nvim_set_hl(0, "DapUIBreakpointsLine", { link = "DapUILineNumber" })
vim.api.nvim_set_hl(0, "DapUIBreakpointsPath", { link = "Title" })
vim.api.nvim_set_hl(0, "DapUIDecoration", { fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "DapUIFloatBorder", { link = "FloatBorder" })
vim.api.nvim_set_hl(0, "DapUIFrameName", { link = "Normal" })
vim.api.nvim_set_hl(0, "DapUILineNumber", { link = "Number" })
vim.api.nvim_set_hl(0, "DapUIModifiedValue", { bold = true, fg = "#575279" })
vim.api.nvim_set_hl(0, "DapUIScope", { link = "Title" })
vim.api.nvim_set_hl(0, "DapUISource", { link = "Keyword" })
vim.api.nvim_set_hl(0, "DapUIStoppedThread", { link = "Title" })
vim.api.nvim_set_hl(0, "DapUIThread", { link = "String" })
vim.api.nvim_set_hl(0, "DapUIType", { link = "Type" })
vim.api.nvim_set_hl(0, "DapUIValue", { fg = "#575279" })
vim.api.nvim_set_hl(0, "DapUIVariable", { fg = "#575279" })
vim.api.nvim_set_hl(0, "DapUIWatchesEmpty", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "DapUIWatchesError", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "DapUIWatchesValue", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "DashboardCenter", { link = "String" })
vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#ca6e69", italic = true })
vim.api.nvim_set_hl(0, "DashboardHeader", { link = "Title" })
vim.api.nvim_set_hl(0, "DashboardShortCut", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Debug", { link = "Special" })
vim.api.nvim_set_hl(0, "Define", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Delimiter", { link = "Special" })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#618774" })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#286983" })
vim.api.nvim_set_hl(0, "DiagnosticSignError", { link = "DiagnosticError" })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { link = "DiagnosticHint" })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { link = "DiagnosticInfo" })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { link = "DiagnosticWarn" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "#e5c9cb", fg = "#b4637a" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = "#ccd3c9", fg = "#618774" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "#bbcacd", fg = "#286983" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "#f5dab6", fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#dbded5" })
vim.api.nvim_set_hl(0, "DiffChange", { bg = "#d0d8d8" })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#ecd7d6" })
vim.api.nvim_set_hl(0, "DiffText", { bg = "#a6bcc3" })
vim.api.nvim_set_hl(0, "Directory", { fg = "#295e73" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#faf4ed" })
vim.api.nvim_set_hl(0, "Error", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "Exception", { link = "Keyword" })
vim.api.nvim_set_hl(0, "FernBranchText", { fg = "#286983" })
vim.api.nvim_set_hl(0, "FidgetTask", { link = "LineNr" })
vim.api.nvim_set_hl(0, "FidgetTitle", { link = "Title" })
vim.api.nvim_set_hl(0, "Float", { link = "Number" })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "FocusedSymbol", { link = "Search" })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "Folded", { bg = "#ebe0df", fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "Function", { fg = "#295e73" })
vim.api.nvim_set_hl(0, "GitGutterAdd", { fg = "#618774" })
vim.api.nvim_set_hl(0, "GitGutterChange", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "GitGutterDelete", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#618774" })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "GlyphPalette0", { fg = "#575279" })
vim.api.nvim_set_hl(0, "GlyphPalette1", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "GlyphPalette10", { fg = "#629f81" })
vim.api.nvim_set_hl(0, "GlyphPalette11", { fg = "#eea846" })
vim.api.nvim_set_hl(0, "GlyphPalette12", { fg = "#2d81a3" })
vim.api.nvim_set_hl(0, "GlyphPalette13", { fg = "#9a80b9" })
vim.api.nvim_set_hl(0, "GlyphPalette14", { fg = "#5ca7b4" })
vim.api.nvim_set_hl(0, "GlyphPalette15", { fg = "#e6ebf3" })
vim.api.nvim_set_hl(0, "GlyphPalette2", { fg = "#618774" })
vim.api.nvim_set_hl(0, "GlyphPalette3", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "GlyphPalette4", { fg = "#286983" })
vim.api.nvim_set_hl(0, "GlyphPalette5", { fg = "#907aa9" })
vim.api.nvim_set_hl(0, "GlyphPalette6", { fg = "#56949f" })
vim.api.nvim_set_hl(0, "GlyphPalette7", { fg = "#e6ebf3" })
vim.api.nvim_set_hl(0, "GlyphPalette8", { fg = "#5f5695" })
vim.api.nvim_set_hl(0, "GlyphPalette9", { fg = "#c26d85" })
vim.api.nvim_set_hl(0, "HopNextKey", { bold = true, fg = "#56949f" })
vim.api.nvim_set_hl(0, "HopNextKey1", { bold = true, fg = "#286983" })
vim.api.nvim_set_hl(0, "HopNextKey2", { fg = "#2d81a3" })
vim.api.nvim_set_hl(0, "HopUnmatched", { fg = "#9893a5" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#56949f" })
vim.api.nvim_set_hl(0, "IncSearch", { bg = "#618774", fg = "#d0d8d8" })
vim.api.nvim_set_hl(0, "Include", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Italic", { italic = true })
vim.api.nvim_set_hl(0, "Keyword", { fg = "#907aa9" })
vim.api.nvim_set_hl(0, "Label", { link = "Conditional" })
vim.api.nvim_set_hl(0, "LightspeedGreyWash", { fg = "#9893a5" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "LspCodeLens", { fg = "#9893a5" })
vim.api.nvim_set_hl(0, "LspCodeLensSeparator", { fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "LspFloatWinBorder", { fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "LspFloatWinNormal", { bg = "#ebe5df" })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = "#d0d8d8" })
vim.api.nvim_set_hl(0, "LspReferenceText", { bg = "#d0d8d8" })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "#d0d8d8" })
vim.api.nvim_set_hl(0, "LspSagaBorderTitle", { link = "Title" })
vim.api.nvim_set_hl(0, "LspSagaCodeActionBorder", { fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "LspSagaCodeActionContent", { link = "String" })
vim.api.nvim_set_hl(0, "LspSagaCodeActionTitle", { link = "Title" })
vim.api.nvim_set_hl(0, "LspSagaDefPreviewBorder", { fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "LspSagaFinderSelection", { fg = "#d0d8d8" })
vim.api.nvim_set_hl(0, "LspSagaHoverBorder", { fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "LspSagaRenameBorder", { fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "LspSagaSignatureHelpBorder", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { fg = "#b8cece" })
vim.api.nvim_set_hl(0, "LspTroubleCount", { bg = "#a8a3b3", fg = "#907aa9" })
vim.api.nvim_set_hl(0, "LspTroubleNormal", { bg = "#ebe5df", fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "LspTroubleText", { fg = "#625c87" })
vim.api.nvim_set_hl(0, "Macro", { link = "PreProc" })
vim.api.nvim_set_hl(0, "MatchParen", { bold = true, fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "ModeMsg", { bold = true, fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "ModesCopy", { bg = "#ea9d34" })
vim.api.nvim_set_hl(0, "ModesDelete", { bg = "#b4637a" })
vim.api.nvim_set_hl(0, "ModesInsert", { bg = "#56949f" })
vim.api.nvim_set_hl(0, "ModesVisual", { bg = "#907aa9" })
vim.api.nvim_set_hl(0, "MoreMsg", { bold = true, fg = "#286983" })
vim.api.nvim_set_hl(0, "NeoTreeDimText", { link = "Conceal" })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#286983" })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#286983" })
vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = "#2d81a3" })
vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = "#625c87" })
vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { fg = "#575279" })
vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = "#618774" })
vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = "#d7827e", italic = true })
vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = "#9893a5" })
vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#9a80b9" })
vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = "#bdbfc9" })
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#ebe5df", fg = "#575279" })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { link = "NeoTreeNormal" })
vim.api.nvim_set_hl(0, "NeoTreeRootName", { bold = true, fg = "#d7827e" })
vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { fg = "#de8db7" })
vim.api.nvim_set_hl(0, "NeogitBranch", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "NeogitDiffAdd", { fg = "#618774" })
vim.api.nvim_set_hl(0, "NeogitDiffAddHighlight", { bg = "#dbded5" })
vim.api.nvim_set_hl(0, "NeogitDiffContextHighlight", { bg = "#d0d8d8" })
vim.api.nvim_set_hl(0, "NeogitDiffDelete", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "NeogitDiffDeleteHighlight", { bg = "#ecd7d6" })
vim.api.nvim_set_hl(0, "NeogitHunkHeader", { bg = "#ebdfe4", fg = "#286983" })
vim.api.nvim_set_hl(0, "NeogitHunkHeaderHighlight", { bg = "#d0d8d8", fg = "#286983" })
vim.api.nvim_set_hl(0, "NeogitNotificationError", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "NeogitNotificationInfo", { fg = "#286983" })
vim.api.nvim_set_hl(0, "NeogitNotificationWarning", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "NeogitRemote", { fg = "#618774" })
vim.api.nvim_set_hl(0, "NonText", { fg = "#bdbfc9" })
vim.api.nvim_set_hl(0, "Normal", { bg = "#faf4ed", fg = "#575279" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#ebe5df", fg = "#575279" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "#faf4ed", fg = "#575279" })
vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", { fg = "#aebeb0" })
vim.api.nvim_set_hl(0, "NotifyDEBUGIcon", { link = "NotifyDEBUGTitle" })
vim.api.nvim_set_hl(0, "NotifyDEBUGTitle", { fg = "#618774" })
vim.api.nvim_set_hl(0, "NotifyERRORBorder", { fg = "#d7acb4" })
vim.api.nvim_set_hl(0, "NotifyERRORIcon", { link = "NotifyERRORTitle" })
vim.api.nvim_set_hl(0, "NotifyERRORTitle", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "NotifyINFOBorder", { fg = "#91aeb8" })
vim.api.nvim_set_hl(0, "NotifyINFOIcon", { link = "NotifyINFOTitle" })
vim.api.nvim_set_hl(0, "NotifyINFOTitle", { fg = "#286983" })
vim.api.nvim_set_hl(0, "NotifyTRACEBorder", { fg = "#bdbfc9" })
vim.api.nvim_set_hl(0, "NotifyTRACEIcon", { link = "NotifyTRACETitle" })
vim.api.nvim_set_hl(0, "NotifyTRACETitle", { fg = "#9893a5" })
vim.api.nvim_set_hl(0, "NotifyWARNBorder", { fg = "#f2c990" })
vim.api.nvim_set_hl(0, "NotifyWARNIcon", { link = "NotifyWARNTitle" })
vim.api.nvim_set_hl(0, "NotifyWARNTitle", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "Number", { fg = "#d7827e" })
vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#286983" })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#286983" })
vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "NvimTreeGitMerge", { fg = "#d7827e" })
vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = "#618774" })
vim.api.nvim_set_hl(0, "NvimTreeGitRenamed", { link = "NvimTreeGitDeleted" })
vim.api.nvim_set_hl(0, "NvimTreeGitStaged", { link = "NvimTreeGitStaged" })
vim.api.nvim_set_hl(0, "NvimTreeImageFile", { fg = "#e6ebf3" })
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#bdbfc9" })
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#ebe5df", fg = "#575279" })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFile", { fg = "#c9709e" })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#295e73" })
vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { bold = true, fg = "#d7827e" })
vim.api.nvim_set_hl(0, "NvimTreeSpecialFile", { fg = "#56949f" })
vim.api.nvim_set_hl(0, "NvimTreeSymlink", { fg = "#de8db7" })
vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { link = "VertSplit" })
vim.api.nvim_set_hl(0, "Operator", { fg = "#625c87" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#d0d8d8", fg = "#575279" })
vim.api.nvim_set_hl(0, "PmenuSbar", { link = "Pmenu" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#b8cece" })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#b8cece" })
vim.api.nvim_set_hl(0, "PounceAccept", { bg = "#ca6e69", fg = "#faf4ed" })
vim.api.nvim_set_hl(0, "PounceAcceptBest", { bg = "#50848c", fg = "#faf4ed" })
vim.api.nvim_set_hl(0, "PounceGap", { bg = "#d0d8d8", fg = "#575279" })
vim.api.nvim_set_hl(0, "PounceMatch", { bg = "#b8cece", fg = "#575279" })
vim.api.nvim_set_hl(0, "PreCondit", { link = "PreProc" })
vim.api.nvim_set_hl(0, "PreProc", { fg = "#c9709e" })
vim.api.nvim_set_hl(0, "Question", { link = "MoreMsg" })
vim.api.nvim_set_hl(0, "QuickFixLine", { link = "CursorLine" })
vim.api.nvim_set_hl(0, "Repeat", { link = "Conditional" })
vim.api.nvim_set_hl(0, "Search", { bg = "#b8cece", fg = "#575279" })
vim.api.nvim_set_hl(0, "SignColumn", { fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "SignColumnSB", { link = "SignColumn" })
vim.api.nvim_set_hl(0, "Sneak", { bg = "#907aa9", fg = "#ebe5df" })
vim.api.nvim_set_hl(0, "SneakScope", { bg = "#d0d8d8" })
vim.api.nvim_set_hl(0, "Special", { fg = "#295e73" })
vim.api.nvim_set_hl(0, "SpecialChar", { link = "Special" })
vim.api.nvim_set_hl(0, "SpecialComment", { link = "Special" })
vim.api.nvim_set_hl(0, "SpecialKey", { link = "NonText" })
vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true })
vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true })
vim.api.nvim_set_hl(0, "SpellLocal", { undercurl = true })
vim.api.nvim_set_hl(0, "SpellRare", { undercurl = true })
vim.api.nvim_set_hl(0, "Statement", { fg = "#907aa9" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#ebe5df", fg = "#625c87" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#ebe5df", fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Type" })
vim.api.nvim_set_hl(0, "String", { fg = "#618774" })
vim.api.nvim_set_hl(0, "Structure", { link = "Type" })
vim.api.nvim_set_hl(0, "Substitute", { bg = "#b4637a", fg = "#faf4ed" })
vim.api.nvim_set_hl(0, "SymbolOutlineConnector", { link = "Conceal" })
vim.api.nvim_set_hl(0, "TSAttribute", { link = "Constant" })
vim.api.nvim_set_hl(0, "TSConstBuiltin", { fg = "#ca6e69" })
vim.api.nvim_set_hl(0, "TSConstructor", { fg = "#907aa9" })
vim.api.nvim_set_hl(0, "TSDanger", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "TSError", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "TSField", { fg = "#286983" })
vim.api.nvim_set_hl(0, "TSFuncBuiltin", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "TSFuncMacro", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "TSKeywordFunction", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "TSKeywordOperator", { bold = true, fg = "#625c87" })
vim.api.nvim_set_hl(0, "TSNamespace", { fg = "#50848c" })
vim.api.nvim_set_hl(0, "TSNote", { fg = "#286983" })
vim.api.nvim_set_hl(0, "TSOperator", { fg = "#625c87" })
vim.api.nvim_set_hl(0, "TSProperty", { link = "TSField" })
vim.api.nvim_set_hl(0, "TSPunctBracket", { fg = "#625c87" })
vim.api.nvim_set_hl(0, "TSPunctDelimiter", { fg = "#625c87" })
vim.api.nvim_set_hl(0, "TSPunctSpecial", { fg = "#625c87" })
vim.api.nvim_set_hl(0, "TSStringEscape", { bold = true, fg = "#dd9024" })
vim.api.nvim_set_hl(0, "TSStringRegex", { fg = "#dd9024" })
vim.api.nvim_set_hl(0, "TSTextReference", { fg = "#907aa9" })
vim.api.nvim_set_hl(0, "TSTypeBuiltin", { fg = "#50848c" })
vim.api.nvim_set_hl(0, "TSURI", { bold = true, fg = "#56949f" })
vim.api.nvim_set_hl(0, "TSVariable", { fg = "#575279" })
vim.api.nvim_set_hl(0, "TSVariableBuiltin", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "TSWarning", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "TabLine", { bg = "#ebe0df", fg = "#a8a3b3" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#ebe5df" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "#bdbfc9", fg = "#625c87" })
vim.api.nvim_set_hl(0, "Tag", { link = "Special" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#bdbfc9" })
vim.api.nvim_set_hl(0, "TelescopeMatching", { link = "Search" })
vim.api.nvim_set_hl(0, "TelescopeSelection", { link = "CursorLine" })
vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#618774" })
vim.api.nvim_set_hl(0, "Title", { fg = "#295e73" })
vim.api.nvim_set_hl(0, "Todo", { bg = "#286983", fg = "#faf4ed" })
vim.api.nvim_set_hl(0, "Type", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "Typedef", { link = "Type" })
vim.api.nvim_set_hl(0, "Underlined", { underline = true })
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#bdbfc9" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#d0d8d8" })
vim.api.nvim_set_hl(0, "VisualNOS", { link = "visual" })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "WhichKey", { link = "Identifier" })
vim.api.nvim_set_hl(0, "WhichKeyDesc", { link = "Keyword" })
vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "#ebe5df" })
vim.api.nvim_set_hl(0, "WhichKeyGroup", { link = "Function" })
vim.api.nvim_set_hl(0, "WhichKeySeparator", { link = "Comment" })
vim.api.nvim_set_hl(0, "WhichKeySeperator", { link = "Comment" })
vim.api.nvim_set_hl(0, "WhichKeyValue", { link = "Comment" })
vim.api.nvim_set_hl(0, "Whitespace", { fg = "#ebe0df" })
vim.api.nvim_set_hl(0, "WildMenu", { link = "Pmenu" })
vim.api.nvim_set_hl(0, "diffAdded", { fg = "#618774" })
vim.api.nvim_set_hl(0, "diffChanged", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "diffFile", { fg = "#286983" })
vim.api.nvim_set_hl(0, "diffIndexLine", { fg = "#c9709e" })
vim.api.nvim_set_hl(0, "diffLine", { fg = "#ca6e69" })
vim.api.nvim_set_hl(0, "diffNewFile", { fg = "#618774" })
vim.api.nvim_set_hl(0, "diffOldFile", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "diffRemoved", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "illuminatedCurWord", { link = "LspReferenceText" })
vim.api.nvim_set_hl(0, "illuminatedWord", { link = "LspReferenceText" })
vim.api.nvim_set_hl(0, "lCursor", { link = "Cursor" })
vim.api.nvim_set_hl(0, "qfFileName", { link = "Directory" })
vim.api.nvim_set_hl(0, "qfLineNr", { link = "lineNr" })
vim.api.nvim_set_hl(0, "rainbowcol1", { fg = "#b4637a" })
vim.api.nvim_set_hl(0, "rainbowcol2", { fg = "#ea9d34" })
vim.api.nvim_set_hl(0, "rainbowcol3", { fg = "#618774" })
vim.api.nvim_set_hl(0, "rainbowcol4", { fg = "#286983" })
vim.api.nvim_set_hl(0, "rainbowcol5", { fg = "#56949f" })
vim.api.nvim_set_hl(0, "rainbowcol6", { fg = "#907aa9" })
vim.api.nvim_set_hl(0, "rainbowcol7", { fg = "#d685af" })
vim.api.nvim_set_hl(0, "rustTSField", { fg = "#625c87" })

-- This is a hack as currently `nvim_set_hl` returns `{ [true] = 6 }`
-- if `Normal` is requested from `nvim_get_hl_by_name("Normal", true)`
vim.cmd("highlight Normal guifg=#575279 guibg=#faf4ed gui=NONE guisp=NONE")

local function set_terminal()
   -- stylua: ignore
  local colors = {
    "#575279", "#b4637a", "#618774", "#ea9d34", "#286983", "#907aa9", "#56949f", "#e5e9f0", "#5f5695", "#c26d85", "#629f81", "#eea846", "#2d81a3", "#9a80b9", "#5ca7b4", "#e6ebf3",
  }
  for i, c in ipairs(colors) do
    local n = "terminal_color_" .. i - 1
    vim.g[n] = c
  end
  if vim.fn.has("nvim") == 0 then
    vim.g.terminal_ansi_colors = vim.list(colors)
  end
end

set_terminal()
