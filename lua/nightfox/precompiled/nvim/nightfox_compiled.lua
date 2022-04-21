-- This file is autogenerated by NIGHTFOX.
-- Do not make changes directly to this file.

local cmd = vim.fn.has("nvim") == 0 and vim.command or vim.cmd

if vim.g.colors_name then
  cmd("hi clear")
end

cmd("set termguicolors")
cmd("set background=dark")
vim.g.colors_name = "nightfox"

vim.api.nvim_set_hl(0, "Bold", { bold = true })
vim.api.nvim_set_hl(0, "Boolean", { link = "Number" })
vim.api.nvim_set_hl(0, "BufferCurrent", { bg = "#71839b", fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "BufferCurrentIndex", { bg = "#71839b", fg = "#719cd6" })
vim.api.nvim_set_hl(0, "BufferCurrentMod", { bg = "#71839b", fg = "#dbc074" })
vim.api.nvim_set_hl(0, "BufferCurrentSign", { bg = "#71839b", fg = "#719cd6" })
vim.api.nvim_set_hl(0, "BufferCurrentTarget", { bg = "#71839b", fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "BufferInactive", { bg = "#131a24", fg = "#526176" })
vim.api.nvim_set_hl(0, "BufferInactiveIndex", { bg = "#131a24", fg = "#526176" })
vim.api.nvim_set_hl(0, "BufferInactiveMod", { bg = "#131a24", fg = "#40423e" })
vim.api.nvim_set_hl(0, "BufferInactiveSign", { bg = "#131a24", fg = "#29394e" })
vim.api.nvim_set_hl(0, "BufferInactiveTarget", { bg = "#131a24", fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "BufferTabpage", { bg = "#131a24", fg = "#29394e" })
vim.api.nvim_set_hl(0, "BufferTabpages", { bg = "#131a24" })
vim.api.nvim_set_hl(0, "BufferVisible", { bg = "#131a24", fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "BufferVisibleIndex", { bg = "#131a24", fg = "#719cd6" })
vim.api.nvim_set_hl(0, "BufferVisibleMod", { bg = "#131a24", fg = "#dbc074" })
vim.api.nvim_set_hl(0, "BufferVisibleSign", { bg = "#131a24", fg = "#719cd6" })
vim.api.nvim_set_hl(0, "BufferVisibleTarget", { bg = "#131a24", fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "Character", { link = "String" })
vim.api.nvim_set_hl(0, "CmpDocumentation", { bg = "#131a24", fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "CmpDocumentationBorder", { bg = "#131a24", fg = "#223249" })
vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#71839b", strikethrough = true })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#86abdc" })
vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#86abdc" })
vim.api.nvim_set_hl(0, "CmpItemKindClass", { link = "Type" })
vim.api.nvim_set_hl(0, "CmpItemKindConstant", { link = "TSConstant" })
vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { link = "Function" })
vim.api.nvim_set_hl(0, "CmpItemKindDefault", { fg = "#aeafb0" })
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
vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#aeafb0" })
vim.api.nvim_set_hl(0, "CmpItemKindStruct", { link = "Type" })
vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { link = "TSField" })
vim.api.nvim_set_hl(0, "CmpItemKindUnit", { link = "Constant" })
vim.api.nvim_set_hl(0, "CmpItemKindValue", { link = "Keyword" })
vim.api.nvim_set_hl(0, "CmpItemKindVariable", { link = "TSVariable" })
vim.api.nvim_set_hl(0, "CmpItemMenu", { link = "Comment" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#212e3f" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#526176" })
vim.api.nvim_set_hl(0, "Conceal", { fg = "#415166" })
vim.api.nvim_set_hl(0, "Conditional", { fg = "#baa1e2" })
vim.api.nvim_set_hl(0, "Constant", { fg = "#f6b079" })
vim.api.nvim_set_hl(0, "CurSearch", { link = "IncSearch" })
vim.api.nvim_set_hl(0, "Cursor", { bg = "#cdcecf", fg = "#192330" })
vim.api.nvim_set_hl(0, "CursorColumn", { link = "CursorLine" })
vim.api.nvim_set_hl(0, "CursorIM", { link = "Cursor" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#29394e" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bold = true, fg = "#dbc074" })
vim.api.nvim_set_hl(0, "DashboardCenter", { link = "String" })
vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#f6b079", italic = true })
vim.api.nvim_set_hl(0, "DashboardHeader", { link = "Title" })
vim.api.nvim_set_hl(0, "DashboardShortCut", { link = "Identifier" })
vim.api.nvim_set_hl(0, "Debug", { link = "Special" })
vim.api.nvim_set_hl(0, "Define", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Delimiter", { link = "Special" })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#719cd6" })
vim.api.nvim_set_hl(0, "DiagnosticSignError", { link = "DiagnosticError" })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { link = "DiagnosticHint" })
vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { link = "DiagnosticInfo" })
vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { link = "DiagnosticWarn" })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { bg = "#3c2c3c", fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { bg = "#2e4045", fg = "#81b29a" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { bg = "#2b3b51", fg = "#719cd6" })
vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { bg = "#40423e", fg = "#dbc074" })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "DiffAdd", { bg = "#26343c" })
vim.api.nvim_set_hl(0, "DiffChange", { bg = "#243244" })
vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#2f2837" })
vim.api.nvim_set_hl(0, "DiffText", { bg = "#253f4a" })
vim.api.nvim_set_hl(0, "Directory", { fg = "#86abdc" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#192330" })
vim.api.nvim_set_hl(0, "Error", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "Exception", { link = "Keyword" })
vim.api.nvim_set_hl(0, "FernBranchText", { fg = "#719cd6" })
vim.api.nvim_set_hl(0, "FidgetTask", { link = "LineNr" })
vim.api.nvim_set_hl(0, "FidgetTitle", { link = "Title" })
vim.api.nvim_set_hl(0, "Float", { link = "Number" })
vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#71839b" })
vim.api.nvim_set_hl(0, "FocusedSymbol", { link = "Search" })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = "#71839b" })
vim.api.nvim_set_hl(0, "Folded", { bg = "#212e3f", fg = "#71839b" })
vim.api.nvim_set_hl(0, "Function", { fg = "#86abdc" })
vim.api.nvim_set_hl(0, "GitGutterAdd", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "GitGutterChange", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "GitGutterDelete", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "GlyphPalette0", { fg = "#393b44" })
vim.api.nvim_set_hl(0, "GlyphPalette1", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "GlyphPalette10", { fg = "#8ebaa4" })
vim.api.nvim_set_hl(0, "GlyphPalette11", { fg = "#e0c989" })
vim.api.nvim_set_hl(0, "GlyphPalette12", { fg = "#86abdc" })
vim.api.nvim_set_hl(0, "GlyphPalette13", { fg = "#baa1e2" })
vim.api.nvim_set_hl(0, "GlyphPalette14", { fg = "#7ad4d6" })
vim.api.nvim_set_hl(0, "GlyphPalette15", { fg = "#e4e4e5" })
vim.api.nvim_set_hl(0, "GlyphPalette2", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "GlyphPalette3", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "GlyphPalette4", { fg = "#719cd6" })
vim.api.nvim_set_hl(0, "GlyphPalette5", { fg = "#9d79d6" })
vim.api.nvim_set_hl(0, "GlyphPalette6", { fg = "#63cdcf" })
vim.api.nvim_set_hl(0, "GlyphPalette7", { fg = "#e4e4e5" })
vim.api.nvim_set_hl(0, "GlyphPalette8", { fg = "#575860" })
vim.api.nvim_set_hl(0, "GlyphPalette9", { fg = "#d16983" })
vim.api.nvim_set_hl(0, "HopNextKey", { bold = true, fg = "#63cdcf" })
vim.api.nvim_set_hl(0, "HopNextKey1", { bold = true, fg = "#719cd6" })
vim.api.nvim_set_hl(0, "HopNextKey2", { fg = "#6085b6" })
vim.api.nvim_set_hl(0, "HopUnmatched", { fg = "#526176" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#63cdcf" })
vim.api.nvim_set_hl(0, "IncSearch", { bg = "#81b29a", fg = "#223249" })
vim.api.nvim_set_hl(0, "Include", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Italic", { italic = true })
vim.api.nvim_set_hl(0, "Keyword", { fg = "#9d79d6" })
vim.api.nvim_set_hl(0, "Label", { link = "Conditional" })
vim.api.nvim_set_hl(0, "LightspeedGreyWash", { fg = "#526176" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#71839b" })
vim.api.nvim_set_hl(0, "LspCodeLens", { fg = "#526176" })
vim.api.nvim_set_hl(0, "LspCodeLensSeparator", { fg = "#71839b" })
vim.api.nvim_set_hl(0, "LspFloatWinBorder", { fg = "#71839b" })
vim.api.nvim_set_hl(0, "LspFloatWinNormal", { bg = "#131a24" })
vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = "#223249" })
vim.api.nvim_set_hl(0, "LspReferenceText", { bg = "#223249" })
vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "#223249" })
vim.api.nvim_set_hl(0, "LspSagaBorderTitle", { link = "Title" })
vim.api.nvim_set_hl(0, "LspSagaCodeActionBorder", { fg = "#71839b" })
vim.api.nvim_set_hl(0, "LspSagaCodeActionContent", { link = "String" })
vim.api.nvim_set_hl(0, "LspSagaCodeActionTitle", { link = "Title" })
vim.api.nvim_set_hl(0, "LspSagaDefPreviewBorder", { fg = "#71839b" })
vim.api.nvim_set_hl(0, "LspSagaFinderSelection", { fg = "#223249" })
vim.api.nvim_set_hl(0, "LspSagaHoverBorder", { fg = "#71839b" })
vim.api.nvim_set_hl(0, "LspSagaRenameBorder", { fg = "#71839b" })
vim.api.nvim_set_hl(0, "LspSagaSignatureHelpBorder", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { fg = "#3a567d" })
vim.api.nvim_set_hl(0, "LspTroubleCount", { bg = "#71839b", fg = "#9d79d6" })
vim.api.nvim_set_hl(0, "LspTroubleNormal", { bg = "#131a24", fg = "#71839b" })
vim.api.nvim_set_hl(0, "LspTroubleText", { fg = "#aeafb0" })
vim.api.nvim_set_hl(0, "Macro", { link = "PreProc" })
vim.api.nvim_set_hl(0, "MatchParen", { bold = true, fg = "#dbc074" })
vim.api.nvim_set_hl(0, "ModeMsg", { bold = true, fg = "#dbc074" })
vim.api.nvim_set_hl(0, "ModesCopy", { bg = "#dbc074" })
vim.api.nvim_set_hl(0, "ModesDelete", { bg = "#c94f6d" })
vim.api.nvim_set_hl(0, "ModesInsert", { bg = "#63cdcf" })
vim.api.nvim_set_hl(0, "ModesVisual", { bg = "#9d79d6" })
vim.api.nvim_set_hl(0, "MoreMsg", { bold = true, fg = "#719cd6" })
vim.api.nvim_set_hl(0, "NeoTreeDimText", { link = "Conceal" })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#719cd6" })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#719cd6" })
vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = "#6085b6" })
vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = "#aeafb0" })
vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = "#f4a261", italic = true })
vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = "#526176" })
vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#8567b6" })
vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = "#415166" })
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#131a24", fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { link = "NeoTreeNormal" })
vim.api.nvim_set_hl(0, "NeoTreeRootName", { bold = true, fg = "#f4a261" })
vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { fg = "#b668b2" })
vim.api.nvim_set_hl(0, "NeogitBranch", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "NeogitDiffAdd", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "NeogitDiffAddHighlight", { bg = "#26343c" })
vim.api.nvim_set_hl(0, "NeogitDiffContextHighlight", { bg = "#243244" })
vim.api.nvim_set_hl(0, "NeogitDiffDelete", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "NeogitDiffDeleteHighlight", { bg = "#2f2837" })
vim.api.nvim_set_hl(0, "NeogitHunkHeader", { bg = "#29394e", fg = "#719cd6" })
vim.api.nvim_set_hl(0, "NeogitHunkHeaderHighlight", { bg = "#223249", fg = "#719cd6" })
vim.api.nvim_set_hl(0, "NeogitNotificationError", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "NeogitNotificationInfo", { fg = "#719cd6" })
vim.api.nvim_set_hl(0, "NeogitNotificationWarning", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "NeogitRemote", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "NonText", { fg = "#415166" })
vim.api.nvim_set_hl(0, "Normal", { bg = "#192330", fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#131a24", fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "#192330", fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", { fg = "#4d6a65" })
vim.api.nvim_set_hl(0, "NotifyDEBUGIcon", { link = "NotifyDEBUGTitle" })
vim.api.nvim_set_hl(0, "NotifyDEBUGTitle", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "NotifyERRORBorder", { fg = "#71394e" })
vim.api.nvim_set_hl(0, "NotifyERRORIcon", { link = "NotifyERRORTitle" })
vim.api.nvim_set_hl(0, "NotifyERRORTitle", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "NotifyINFOBorder", { fg = "#456083" })
vim.api.nvim_set_hl(0, "NotifyINFOIcon", { link = "NotifyINFOTitle" })
vim.api.nvim_set_hl(0, "NotifyINFOTitle", { fg = "#719cd6" })
vim.api.nvim_set_hl(0, "NotifyTRACEBorder", { fg = "#415166" })
vim.api.nvim_set_hl(0, "NotifyTRACEIcon", { link = "NotifyTRACETitle" })
vim.api.nvim_set_hl(0, "NotifyTRACETitle", { fg = "#526176" })
vim.api.nvim_set_hl(0, "NotifyWARNBorder", { fg = "#7a7252" })
vim.api.nvim_set_hl(0, "NotifyWARNIcon", { link = "NotifyWARNTitle" })
vim.api.nvim_set_hl(0, "NotifyWARNTitle", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "Number", { fg = "#f4a261" })
vim.api.nvim_set_hl(0, "NvimTreeEmptyFolderName", { fg = "#71839b" })
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#719cd6" })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#719cd6" })
vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "NvimTreeGitMerge", { fg = "#f4a261" })
vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "NvimTreeGitRenamed", { link = "NvimTreeGitDeleted" })
vim.api.nvim_set_hl(0, "NvimTreeGitStaged", { link = "NvimTreeGitStaged" })
vim.api.nvim_set_hl(0, "NvimTreeImageFile", { fg = "#bebebe" })
vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#415166" })
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "#131a24", fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFile", { fg = "#dc8ed9" })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#86abdc" })
vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { bold = true, fg = "#f4a261" })
vim.api.nvim_set_hl(0, "NvimTreeSpecialFile", { fg = "#63cdcf" })
vim.api.nvim_set_hl(0, "NvimTreeSymlink", { fg = "#b668b2" })
vim.api.nvim_set_hl(0, "NvimTreeVertSplit", { link = "VertSplit" })
vim.api.nvim_set_hl(0, "Operator", { fg = "#aeafb0" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "#223249", fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "PmenuSbar", { link = "Pmenu" })
vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#3a567d" })
vim.api.nvim_set_hl(0, "PmenuThumb", { bg = "#3a567d" })
vim.api.nvim_set_hl(0, "PounceAccept", { bg = "#f6b079", fg = "#192330" })
vim.api.nvim_set_hl(0, "PounceAcceptBest", { bg = "#7ad4d6", fg = "#192330" })
vim.api.nvim_set_hl(0, "PounceGap", { bg = "#223249", fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "PounceMatch", { bg = "#3a567d", fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "PreCondit", { link = "PreProc" })
vim.api.nvim_set_hl(0, "PreProc", { fg = "#dc8ed9" })
vim.api.nvim_set_hl(0, "Question", { link = "MoreMsg" })
vim.api.nvim_set_hl(0, "QuickFixLine", { link = "CursorLine" })
vim.api.nvim_set_hl(0, "Repeat", { link = "Conditional" })
vim.api.nvim_set_hl(0, "Search", { bg = "#3a567d", fg = "#cdcecf" })
vim.api.nvim_set_hl(0, "SignColumn", { fg = "#71839b" })
vim.api.nvim_set_hl(0, "SignColumnSB", { link = "SignColumn" })
vim.api.nvim_set_hl(0, "Sneak", { bg = "#9d79d6", fg = "#131a24" })
vim.api.nvim_set_hl(0, "SneakScope", { bg = "#223249" })
vim.api.nvim_set_hl(0, "Special", { fg = "#86abdc" })
vim.api.nvim_set_hl(0, "SpecialChar", { link = "Special" })
vim.api.nvim_set_hl(0, "SpecialComment", { link = "Special" })
vim.api.nvim_set_hl(0, "SpecialKey", { link = "NonText" })
vim.api.nvim_set_hl(0, "SpellBad", { undercurl = true })
vim.api.nvim_set_hl(0, "SpellCap", { undercurl = true })
vim.api.nvim_set_hl(0, "SpellLocal", { undercurl = true })
vim.api.nvim_set_hl(0, "SpellRare", { undercurl = true })
vim.api.nvim_set_hl(0, "Statement", { fg = "#9d79d6" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#131a24", fg = "#aeafb0" })
vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "#131a24", fg = "#71839b" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Type" })
vim.api.nvim_set_hl(0, "String", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "Structure", { link = "Type" })
vim.api.nvim_set_hl(0, "Substitute", { bg = "#c94f6d", fg = "#192330" })
vim.api.nvim_set_hl(0, "SymbolOutlineConnector", { link = "Conceal" })
vim.api.nvim_set_hl(0, "TSAttribute", { link = "Constant" })
vim.api.nvim_set_hl(0, "TSConstBuiltin", { fg = "#f6b079" })
vim.api.nvim_set_hl(0, "TSConstructor", { fg = "#9d79d6" })
vim.api.nvim_set_hl(0, "TSDanger", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "TSError", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "TSField", { fg = "#719cd6" })
vim.api.nvim_set_hl(0, "TSFuncBuiltin", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "TSFuncMacro", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "TSKeywordFunction", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "TSKeywordOperator", { bold = true, fg = "#aeafb0" })
vim.api.nvim_set_hl(0, "TSNamespace", { fg = "#7ad4d6" })
vim.api.nvim_set_hl(0, "TSNote", { fg = "#719cd6" })
vim.api.nvim_set_hl(0, "TSOperator", { fg = "#aeafb0" })
vim.api.nvim_set_hl(0, "TSProperty", { link = "TSField" })
vim.api.nvim_set_hl(0, "TSPunctBracket", { fg = "#aeafb0" })
vim.api.nvim_set_hl(0, "TSPunctDelimiter", { fg = "#aeafb0" })
vim.api.nvim_set_hl(0, "TSPunctSpecial", { fg = "#aeafb0" })
vim.api.nvim_set_hl(0, "TSStringEscape", { bold = true, fg = "#e0c989" })
vim.api.nvim_set_hl(0, "TSStringRegex", { fg = "#e0c989" })
vim.api.nvim_set_hl(0, "TSTextReference", { fg = "#9d79d6" })
vim.api.nvim_set_hl(0, "TSTypeBuiltin", { fg = "#7ad4d6" })
vim.api.nvim_set_hl(0, "TSURI", { bold = true, fg = "#63cdcf" })
vim.api.nvim_set_hl(0, "TSVariable", { fg = "#dfdfe0" })
vim.api.nvim_set_hl(0, "TSVariableBuiltin", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "TSWarning", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "TabLine", { bg = "#212e3f", fg = "#71839b" })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = "#131a24" })
vim.api.nvim_set_hl(0, "TabLineSel", { bg = "#415166", fg = "#aeafb0" })
vim.api.nvim_set_hl(0, "Tag", { link = "Special" })
vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#415166" })
vim.api.nvim_set_hl(0, "TelescopeMatching", { link = "Search" })
vim.api.nvim_set_hl(0, "TelescopeSelection", { link = "CursorLine" })
vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "Title", { fg = "#86abdc" })
vim.api.nvim_set_hl(0, "Todo", { bg = "#719cd6", fg = "#192330" })
vim.api.nvim_set_hl(0, "Type", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "Typedef", { link = "Type" })
vim.api.nvim_set_hl(0, "Underlined", { underline = true })
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#415166" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#223249" })
vim.api.nvim_set_hl(0, "VisualNOS", { link = "visual" })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "WhichKey", { link = "Identifier" })
vim.api.nvim_set_hl(0, "WhichKeyDesc", { link = "Keyword" })
vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "#131a24" })
vim.api.nvim_set_hl(0, "WhichKeyGroup", { link = "Function" })
vim.api.nvim_set_hl(0, "WhichKeySeparator", { link = "Comment" })
vim.api.nvim_set_hl(0, "WhichKeySeperator", { link = "Comment" })
vim.api.nvim_set_hl(0, "WhichKeyValue", { link = "Comment" })
vim.api.nvim_set_hl(0, "Whitespace", { fg = "#212e3f" })
vim.api.nvim_set_hl(0, "WildMenu", { link = "Pmenu" })
vim.api.nvim_set_hl(0, "diffAdded", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "diffChanged", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "diffFile", { fg = "#719cd6" })
vim.api.nvim_set_hl(0, "diffIndexLine", { fg = "#dc8ed9" })
vim.api.nvim_set_hl(0, "diffLine", { fg = "#f6b079" })
vim.api.nvim_set_hl(0, "diffNewFile", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "diffOldFile", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "diffRemoved", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "illuminatedCurWord", { link = "LspReferenceText" })
vim.api.nvim_set_hl(0, "illuminatedWord", { link = "LspReferenceText" })
vim.api.nvim_set_hl(0, "lCursor", { link = "Cursor" })
vim.api.nvim_set_hl(0, "qfFileName", { link = "Directory" })
vim.api.nvim_set_hl(0, "qfLineNr", { link = "lineNr" })
vim.api.nvim_set_hl(0, "rainbowcol1", { fg = "#c94f6d" })
vim.api.nvim_set_hl(0, "rainbowcol2", { fg = "#dbc074" })
vim.api.nvim_set_hl(0, "rainbowcol3", { fg = "#81b29a" })
vim.api.nvim_set_hl(0, "rainbowcol4", { fg = "#719cd6" })
vim.api.nvim_set_hl(0, "rainbowcol5", { fg = "#63cdcf" })
vim.api.nvim_set_hl(0, "rainbowcol6", { fg = "#9d79d6" })
vim.api.nvim_set_hl(0, "rainbowcol7", { fg = "#d67ad2" })
vim.api.nvim_set_hl(0, "rustTSField", { fg = "#aeafb0" })

-- This is a hack as currently `nvim_set_hl` returns `{ [true] = 6 }`
-- if `Normal` is requested from `nvim_get_hl_by_name("Normal", true)`
vim.cmd("highlight Normal guifg=#cdcecf guibg=#192330 gui=NONE guisp=NONE")

local function set_terminal()
   -- stylua: ignore
  local colors = {
    "#393b44", "#c94f6d", "#81b29a", "#dbc074", "#719cd6", "#9d79d6", "#63cdcf", "#dfdfe0", "#575860", "#d16983", "#8ebaa4", "#e0c989", "#86abdc", "#baa1e2", "#7ad4d6", "#e4e4e5",
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
