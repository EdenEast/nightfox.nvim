-- This file is autogenerated by NIGHTFOX.
-- Do not make changes directly to this file.

local cmd = vim.fn.has("nvim") == 0 and vim.command or vim.cmd

if vim.g.colors_name then
  cmd("hi clear")
end

cmd("set termguicolors")
cmd("set background=dark")
vim.g.colors_name = "nordfox"

cmd([[
highlight @constant.builtin guifg=#d89079 guibg=NONE gui=NONE guisp=NONE |
highlight @constructor guifg=#b48ead guibg=NONE gui=NONE guisp=NONE |
highlight @danger guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight @error guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight @field guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight @field.rust guifg=#abb1bb guibg=NONE gui=NONE guisp=NONE |
highlight @function.builtin guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight @function.macro guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight @keyword.function guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight @keyword.operator guifg=#abb1bb guibg=NONE gui=bold guisp=NONE |
highlight @namespace guifg=#93ccdc guibg=NONE gui=NONE guisp=NONE |
highlight @note guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight @operator guifg=#abb1bb guibg=NONE gui=NONE guisp=NONE |
highlight @punctuation.bracket guifg=#abb1bb guibg=NONE gui=NONE guisp=NONE |
highlight @punctuation.delimiter guifg=#abb1bb guibg=NONE gui=NONE guisp=NONE |
highlight @punctuation.special guifg=#abb1bb guibg=NONE gui=NONE guisp=NONE |
highlight @string.escape guifg=#f0d399 guibg=NONE gui=bold guisp=NONE |
highlight @string.regex guifg=#f0d399 guibg=NONE gui=NONE guisp=NONE |
highlight @text guifg=#cdcecf guibg=NONE gui=NONE guisp=NONE |
highlight @text.reference guifg=#b48ead guibg=NONE gui=NONE guisp=NONE |
highlight @type.builtin guifg=#93ccdc guibg=NONE gui=NONE guisp=NONE |
highlight @uri guifg=#88c0d0 guibg=NONE gui=bold guisp=NONE |
highlight @variable guifg=#e5e9f0 guibg=NONE gui=NONE guisp=NONE |
highlight @variable.builtin guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight @warning guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight AerialGuide guifg=#5a657d guibg=NONE gui=NONE guisp=NONE |
highlight Bold guifg=NONE guibg=NONE gui=bold guisp=NONE |
highlight BufferCurrent guifg=#cdcecf guibg=#7e8188 gui=NONE guisp=NONE |
highlight BufferCurrentIndex guifg=#81a1c1 guibg=#7e8188 gui=NONE guisp=NONE |
highlight BufferCurrentMod guifg=#ebcb8b guibg=#7e8188 gui=NONE guisp=NONE |
highlight BufferCurrentSign guifg=#81a1c1 guibg=#7e8188 gui=NONE guisp=NONE |
highlight BufferCurrentTarget guifg=#bf616a guibg=#7e8188 gui=NONE guisp=NONE |
highlight BufferInactive guifg=#60728a guibg=#232831 gui=NONE guisp=NONE |
highlight BufferInactiveIndex guifg=#60728a guibg=#232831 gui=NONE guisp=NONE |
highlight BufferInactiveMod guifg=#54524f guibg=#232831 gui=NONE guisp=NONE |
highlight BufferInactiveSign guifg=#444c5e guibg=#232831 gui=NONE guisp=NONE |
highlight BufferInactiveTarget guifg=#bf616a guibg=#232831 gui=NONE guisp=NONE |
highlight BufferTabpage guifg=#444c5e guibg=#232831 gui=NONE guisp=NONE |
highlight BufferTabpages guifg=NONE guibg=#232831 gui=NONE guisp=NONE |
highlight BufferVisible guifg=#cdcecf guibg=#232831 gui=NONE guisp=NONE |
highlight BufferVisibleIndex guifg=#81a1c1 guibg=#232831 gui=NONE guisp=NONE |
highlight BufferVisibleMod guifg=#ebcb8b guibg=#232831 gui=NONE guisp=NONE |
highlight BufferVisibleSign guifg=#81a1c1 guibg=#232831 gui=NONE guisp=NONE |
highlight BufferVisibleTarget guifg=#bf616a guibg=#232831 gui=NONE guisp=NONE |
highlight CmpDocumentation guifg=#cdcecf guibg=#232831 gui=NONE guisp=NONE |
highlight CmpDocumentationBorder guifg=#3e4a5b guibg=#232831 gui=NONE guisp=NONE |
highlight CmpItemAbbr guifg=#cdcecf guibg=NONE gui=NONE guisp=NONE |
highlight CmpItemAbbrDeprecated guifg=#7e8188 guibg=NONE gui=strikethrough guisp=NONE |
highlight CmpItemAbbrMatch guifg=#8cafd2 guibg=NONE gui=NONE guisp=NONE |
highlight CmpItemAbbrMatchFuzzy guifg=#8cafd2 guibg=NONE gui=NONE guisp=NONE |
highlight CmpItemKindDefault guifg=#abb1bb guibg=NONE gui=NONE guisp=NONE |
highlight CmpItemKindSnippet guifg=#abb1bb guibg=NONE gui=NONE guisp=NONE |
highlight CocInlayHint guifg=#60728a guibg=#39404f gui=NONE guisp=NONE |
highlight ColorColumn guifg=NONE guibg=#39404f gui=NONE guisp=NONE |
highlight Comment guifg=#60728a guibg=NONE gui=NONE guisp=NONE |
highlight Conceal guifg=#5a657d guibg=NONE gui=NONE guisp=NONE |
highlight Conditional guifg=#c895bf guibg=NONE gui=NONE guisp=NONE |
highlight Constant guifg=#d89079 guibg=NONE gui=NONE guisp=NONE |
highlight Cursor guifg=#2e3440 guibg=#cdcecf gui=NONE guisp=NONE |
highlight CursorLine guifg=NONE guibg=#444c5e gui=NONE guisp=NONE |
highlight CursorLineNr guifg=#ebcb8b guibg=NONE gui=bold guisp=NONE |
highlight DapUIBreakpointsCurrentLine guifg=#a3be8c guibg=NONE gui=bold guisp=NONE |
highlight DapUIBreakpointsDisabledLine guifg=#60728a guibg=NONE gui=NONE guisp=NONE |
highlight DapUIBreakpointsInfo guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIBreakpointsPath guifg=#93ccdc guibg=NONE gui=NONE guisp=NONE |
highlight DapUIDecoration guifg=#7e8188 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIModifiedValue guifg=#e5e9f0 guibg=NONE gui=bold guisp=NONE |
highlight DapUIScope guifg=#93ccdc guibg=NONE gui=NONE guisp=NONE |
highlight DapUIStoppedThread guifg=#93ccdc guibg=NONE gui=NONE guisp=NONE |
highlight DapUIValue guifg=#e5e9f0 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIVariable guifg=#e5e9f0 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIWatchesEmpty guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight DapUIWatchesError guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight DapUIWatchesValue guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight DashboardFooter guifg=#d89079 guibg=NONE gui=italic guisp=NONE |
highlight DiagnosticError guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight DiagnosticHint guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight DiagnosticInfo guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE gui=undercurl guisp=#bf616a |
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE gui=undercurl guisp=#a3be8c |
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE gui=undercurl guisp=#81a1c1 |
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE gui=undercurl guisp=#ebcb8b |
highlight DiagnosticVirtualTextError guifg=#bf616a guibg=#4b3d48 gui=NONE guisp=NONE |
highlight DiagnosticVirtualTextHint guifg=#a3be8c guibg=#45504f gui=NONE guisp=NONE |
highlight DiagnosticVirtualTextInfo guifg=#81a1c1 guibg=#3f4a5a gui=NONE guisp=NONE |
highlight DiagnosticVirtualTextWarn guifg=#ebcb8b guibg=#54524f gui=NONE guisp=NONE |
highlight DiagnosticWarn guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight DiffAdd guifg=NONE guibg=#3c4548 gui=NONE guisp=NONE |
highlight DiffChange guifg=NONE guibg=#364150 gui=NONE guisp=NONE |
highlight DiffDelete guifg=NONE guibg=#403843 gui=NONE guisp=NONE |
highlight DiffText guifg=NONE guibg=#3d515e gui=NONE guisp=NONE |
highlight Directory guifg=#8cafd2 guibg=NONE gui=NONE guisp=NONE |
highlight EndOfBuffer guifg=#2e3440 guibg=NONE gui=NONE guisp=NONE |
highlight Error guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight ErrorMsg guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight FernBranchText guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight FloatBorder guifg=#7e8188 guibg=NONE gui=NONE guisp=NONE |
highlight FoldColumn guifg=#7e8188 guibg=NONE gui=NONE guisp=NONE |
highlight Folded guifg=#7e8188 guibg=#39404f gui=NONE guisp=NONE |
highlight Function guifg=#8cafd2 guibg=NONE gui=NONE guisp=NONE |
highlight GitGutterAdd guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight GitGutterChange guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight GitGutterDelete guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight GitSignsAdd guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight GitSignsChange guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight GitSignsDelete guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette0 guifg=#3b4252 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette1 guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette10 guifg=#b1d196 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette11 guifg=#f0d399 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette12 guifg=#8cafd2 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette13 guifg=#c895bf guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette14 guifg=#93ccdc guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette15 guifg=#e7ecf4 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette2 guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette3 guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette4 guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette5 guifg=#b48ead guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette6 guifg=#88c0d0 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette7 guifg=#e7ecf4 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette8 guifg=#465780 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette9 guifg=#d06f79 guibg=NONE gui=NONE guisp=NONE |
highlight HopNextKey guifg=#88c0d0 guibg=NONE gui=bold guisp=NONE |
highlight HopNextKey1 guifg=#81a1c1 guibg=NONE gui=bold guisp=NONE |
highlight HopNextKey2 guifg=#668aab guibg=NONE gui=NONE guisp=NONE |
highlight HopUnmatched guifg=#60728a guibg=NONE gui=NONE guisp=NONE |
highlight Identifier guifg=#88c0d0 guibg=NONE gui=NONE guisp=NONE |
highlight IncSearch guifg=#000000 guibg=#a3be8c gui=NONE guisp=NONE |
highlight Italic guifg=NONE guibg=NONE gui=italic guisp=NONE |
highlight Keyword guifg=#b48ead guibg=NONE gui=NONE guisp=NONE |
highlight LightspeedGreyWash guifg=#60728a guibg=NONE gui=NONE guisp=NONE |
highlight LineNr guifg=#7e8188 guibg=NONE gui=NONE guisp=NONE |
highlight LspCodeLens guifg=#60728a guibg=NONE gui=NONE guisp=NONE |
highlight LspCodeLensSeparator guifg=#7e8188 guibg=NONE gui=NONE guisp=NONE |
highlight LspFloatWinBorder guifg=#7e8188 guibg=NONE gui=NONE guisp=NONE |
highlight LspFloatWinNormal guifg=NONE guibg=#232831 gui=NONE guisp=NONE |
highlight LspInlayHint guifg=#60728a guibg=#39404f gui=NONE guisp=NONE |
highlight LspReferenceRead guifg=NONE guibg=#3e4a5b gui=NONE guisp=NONE |
highlight LspReferenceText guifg=NONE guibg=#3e4a5b gui=NONE guisp=NONE |
highlight LspReferenceWrite guifg=NONE guibg=#3e4a5b gui=NONE guisp=NONE |
highlight LspSagaCodeActionBorder guifg=#7e8188 guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaDefPreviewBorder guifg=#7e8188 guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaFinderSelection guifg=#3e4a5b guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaHoverBorder guifg=#7e8188 guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaRenameBorder guifg=#7e8188 guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaSignatureHelpBorder guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight LspSignatureActiveParameter guifg=#4f6074 guibg=NONE gui=NONE guisp=NONE |
highlight LspTroubleCount guifg=#b48ead guibg=#7e8188 gui=NONE guisp=NONE |
highlight LspTroubleNormal guifg=#7e8188 guibg=#232831 gui=NONE guisp=NONE |
highlight LspTroubleText guifg=#abb1bb guibg=NONE gui=NONE guisp=NONE |
highlight MatchParen guifg=#ebcb8b guibg=NONE gui=bold guisp=NONE |
highlight MiniCompletionActiveParameter guifg=NONE guibg=NONE gui=underline guisp=NONE |
highlight MiniIndentscopePrefix guifg=NONE guibg=NONE gui=nocombine guisp=NONE |
highlight MiniJump guifg=#232831 guibg=#b48ead gui=NONE guisp=NONE |
highlight MiniJump2dSpot guifg=#88c0d0 guibg=NONE gui=bold guisp=NONE |
highlight MiniStarterCurrent guifg=NONE guibg=NONE gui=nocombine guisp=NONE |
highlight MiniStarterFooter guifg=#d89079 guibg=NONE gui=italic guisp=NONE |
highlight MiniStarterItemBullet guifg=#7e8188 guibg=NONE gui=NONE guisp=NONE |
highlight MiniStarterItemPrefix guifg=#bf88bc guibg=NONE gui=NONE guisp=NONE |
highlight MiniStarterQuery guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight MiniStarterSection guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight MiniStatuslineDevinfo guifg=#abb1bb guibg=#39404f gui=NONE guisp=NONE |
highlight MiniStatuslineFileinfo guifg=#abb1bb guibg=#39404f gui=NONE guisp=NONE |
highlight MiniStatuslineModeCommand guifg=#232831 guibg=#ebcb8b gui=bold guisp=NONE |
highlight MiniStatuslineModeInsert guifg=#232831 guibg=#a3be8c gui=bold guisp=NONE |
highlight MiniStatuslineModeNormal guifg=#232831 guibg=#88c0d0 gui=bold guisp=NONE |
highlight MiniStatuslineModeOther guifg=#232831 guibg=#81a1c1 gui=bold guisp=NONE |
highlight MiniStatuslineModeReplace guifg=#232831 guibg=#bf616a gui=bold guisp=NONE |
highlight MiniStatuslineModeVisual guifg=#232831 guibg=#b48ead gui=bold guisp=NONE |
highlight MiniTablineCurrent guifg=#abb1bb guibg=#5a657d gui=bold guisp=NONE |
highlight MiniTablineHidden guifg=#7e8188 guibg=#39404f gui=NONE guisp=NONE |
highlight MiniTablineModifiedCurrent guifg=#5a657d guibg=#abb1bb gui=bold guisp=NONE |
highlight MiniTablineModifiedHidden guifg=#39404f guibg=#7e8188 gui=NONE guisp=NONE |
highlight MiniTablineModifiedVisible guifg=#39404f guibg=#abb1bb gui=NONE guisp=NONE |
highlight MiniTablineTabpagesection guifg=#cdcecf guibg=#2e3440 gui=bold guisp=NONE |
highlight MiniTablineVisible guifg=#abb1bb guibg=#39404f gui=NONE guisp=NONE |
highlight MiniTestEmphasis guifg=NONE guibg=NONE gui=bold guisp=NONE |
highlight MiniTestFail guifg=#bf616a guibg=NONE gui=bold guisp=NONE |
highlight MiniTestPass guifg=#a3be8c guibg=NONE gui=bold guisp=NONE |
highlight MiniTrailspace guifg=NONE guibg=#bf616a gui=NONE guisp=NONE |
highlight ModeMsg guifg=#ebcb8b guibg=NONE gui=bold guisp=NONE |
highlight ModesCopy guifg=NONE guibg=#ebcb8b gui=NONE guisp=NONE |
highlight ModesDelete guifg=NONE guibg=#bf616a gui=NONE guisp=NONE |
highlight ModesInsert guifg=NONE guibg=#88c0d0 gui=NONE guisp=NONE |
highlight ModesVisual guifg=NONE guibg=#b48ead gui=NONE guisp=NONE |
highlight MoreMsg guifg=#81a1c1 guibg=NONE gui=bold guisp=NONE |
highlight NeoTreeDirectoryIcon guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeDirectoryName guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeDotfile guifg=#668aab guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeFileName guifg=#abb1bb guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeFileNameOpened guifg=#cdcecf guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitAdded guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitConflict guifg=#c9826b guibg=NONE gui=italic guisp=NONE |
highlight NeoTreeGitDeleted guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitIgnored guifg=#60728a guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitModified guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitUntracked guifg=#9d7495 guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeIndentMarker guifg=#5a657d guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeNormal guifg=#cdcecf guibg=#232831 gui=NONE guisp=NONE |
highlight NeoTreeRootName guifg=#c9826b guibg=NONE gui=bold guisp=NONE |
highlight NeoTreeSymbolicLinkTarget guifg=#a96ca5 guibg=NONE gui=NONE guisp=NONE |
highlight NeogitBranch guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight NeogitDiffAdd guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight NeogitDiffAddHighlight guifg=NONE guibg=#3c4548 gui=NONE guisp=NONE |
highlight NeogitDiffContextHighlight guifg=NONE guibg=#39404f gui=NONE guisp=NONE |
highlight NeogitDiffDelete guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight NeogitDiffDeleteHighlight guifg=NONE guibg=#403843 gui=NONE guisp=NONE |
highlight NeogitHunkHeader guifg=#81a1c1 guibg=#444c5e gui=NONE guisp=NONE |
highlight NeogitHunkHeaderHighlight guifg=#81a1c1 guibg=#3e4a5b gui=NONE guisp=NONE |
highlight NeogitNotificationError guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight NeogitNotificationInfo guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight NeogitNotificationWarning guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight NeogitRemote guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight NeotestAdapterName guifg=#bf88bc guibg=NONE gui=bold guisp=NONE |
highlight NeotestDir guifg=#88c0d0 guibg=NONE gui=NONE guisp=NONE |
highlight NeotestFailed guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight NeotestFile guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight NeotestFocused guifg=NONE guibg=NONE gui=underline guisp=NONE |
highlight NeotestMarked guifg=#cdcecf guibg=NONE gui=bold guisp=NONE |
highlight NeotestNamespace guifg=#69a7ba guibg=NONE gui=NONE guisp=NONE |
highlight NeotestPassed guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight NeotestRunning guifg=#c9826b guibg=NONE gui=NONE guisp=NONE |
highlight NeotestSkipped guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight NonText guifg=#5a657d guibg=NONE gui=NONE guisp=NONE |
highlight Normal guifg=#cdcecf guibg=#2e3440 gui=NONE guisp=NONE |
highlight NormalFloat guifg=#cdcecf guibg=#232831 gui=NONE guisp=NONE |
highlight NormalNC guifg=#cdcecf guibg=#2e3440 gui=NONE guisp=NONE |
highlight NotifyDEBUGBorder guifg=#687966 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyDEBUGTitle guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight NotifyERRORBorder guifg=#764a55 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyERRORTitle guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight NotifyINFOBorder guifg=#586a80 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyINFOTitle guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyTRACEBorder guifg=#5a657d guibg=NONE gui=NONE guisp=NONE |
highlight NotifyTRACETitle guifg=#60728a guibg=NONE gui=NONE guisp=NONE |
highlight NotifyWARNBorder guifg=#8c7f66 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyWARNTitle guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight Number guifg=#c9826b guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeEmptyFolderName guifg=#7e8188 guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeFolderIcon guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeFolderName guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeGitDeleted guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeGitDirty guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeGitMerge guifg=#c9826b guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeGitNew guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeImageFile guifg=#bbc3d4 guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeIndentMarker guifg=#5a657d guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeNormal guifg=#cdcecf guibg=#232831 gui=NONE guisp=NONE |
highlight NvimTreeOpenedFile guifg=#d092ce guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeOpenedFolderName guifg=#8cafd2 guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeRootFolder guifg=#c9826b guibg=NONE gui=bold guisp=NONE |
highlight NvimTreeSpecialFile guifg=#88c0d0 guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeSymlink guifg=#a96ca5 guibg=NONE gui=NONE guisp=NONE |
highlight Operator guifg=#abb1bb guibg=NONE gui=NONE guisp=NONE |
highlight Pmenu guifg=#cdcecf guibg=#3e4a5b gui=NONE guisp=NONE |
highlight PmenuSel guifg=NONE guibg=#4f6074 gui=NONE guisp=NONE |
highlight PmenuThumb guifg=NONE guibg=#4f6074 gui=NONE guisp=NONE |
highlight PounceAccept guifg=#2e3440 guibg=#d89079 gui=NONE guisp=NONE |
highlight PounceAcceptBest guifg=#2e3440 guibg=#93ccdc gui=NONE guisp=NONE |
highlight PounceGap guifg=#cdcecf guibg=#3e4a5b gui=NONE guisp=NONE |
highlight PounceMatch guifg=#cdcecf guibg=#4f6074 gui=NONE guisp=NONE |
highlight PreProc guifg=#d092ce guibg=NONE gui=NONE guisp=NONE |
highlight Search guifg=#cdcecf guibg=#4f6074 gui=NONE guisp=NONE |
highlight SignColumn guifg=#7e8188 guibg=NONE gui=NONE guisp=NONE |
highlight Sneak guifg=#232831 guibg=#b48ead gui=NONE guisp=NONE |
highlight SneakScope guifg=NONE guibg=#3e4a5b gui=NONE guisp=NONE |
highlight Special guifg=#8cafd2 guibg=NONE gui=NONE guisp=NONE |
highlight SpellBad guifg=NONE guibg=NONE gui=undercurl guisp=#bf616a |
highlight SpellCap guifg=NONE guibg=NONE gui=undercurl guisp=#ebcb8b |
highlight SpellLocal guifg=NONE guibg=NONE gui=undercurl guisp=#81a1c1 |
highlight SpellRare guifg=NONE guibg=NONE gui=undercurl guisp=#81a1c1 |
highlight Statement guifg=#b48ead guibg=NONE gui=NONE guisp=NONE |
highlight StatusLine guifg=#abb1bb guibg=#232831 gui=NONE guisp=NONE |
highlight StatusLineNC guifg=#7e8188 guibg=#232831 gui=NONE guisp=NONE |
highlight String guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight Substitute guifg=#2e3440 guibg=#bf616a gui=NONE guisp=NONE |
highlight TabLine guifg=#abb1bb guibg=#39404f gui=NONE guisp=NONE |
highlight TabLineFill guifg=NONE guibg=#232831 gui=NONE guisp=NONE |
highlight TabLineSel guifg=#2e3440 guibg=#7e8188 gui=NONE guisp=NONE |
highlight TelescopeBorder guifg=#5a657d guibg=NONE gui=NONE guisp=NONE |
highlight TelescopeSelectionCaret guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight Title guifg=#8cafd2 guibg=NONE gui=NONE guisp=NONE |
highlight Todo guifg=#2e3440 guibg=#81a1c1 gui=NONE guisp=NONE |
highlight Type guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight Underlined guifg=NONE guibg=NONE gui=underline guisp=NONE |
highlight VertSplit guifg=#232831 guibg=NONE gui=NONE guisp=NONE |
highlight Visual guifg=NONE guibg=#3e4a5b gui=NONE guisp=NONE |
highlight WarningMsg guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight WhichKeyFloat guifg=NONE guibg=#232831 gui=NONE guisp=NONE |
highlight Whitespace guifg=#444c5e guibg=NONE gui=NONE guisp=NONE |
highlight WinBar guifg=#7e8188 guibg=#2e3440 gui=bold guisp=NONE |
highlight WinBarNC guifg=#7e8188 guibg=#2e3440 gui=bold guisp=NONE |
highlight diffAdded guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight diffChanged guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight diffFile guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight diffIndexLine guifg=#d092ce guibg=NONE gui=NONE guisp=NONE |
highlight diffLine guifg=#d89079 guibg=NONE gui=NONE guisp=NONE |
highlight diffNewFile guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight diffOldFile guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight diffRemoved guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol1 guifg=#bf616a guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol2 guifg=#ebcb8b guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol3 guifg=#a3be8c guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol4 guifg=#81a1c1 guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol5 guifg=#88c0d0 guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol6 guifg=#b48ead guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol7 guifg=#bf88bc guibg=NONE gui=NONE guisp=NONE |
highlight! link @attribute Constant |
highlight! link @property @field |
highlight! link @tag Keyword |
highlight! link @tag.attribute Function |
highlight! link @tag.delimiter Delimiter |
highlight! link AerialLine Search |
highlight! link Boolean Number |
highlight! link Character String |
highlight! link CmpItemKindClass Type |
highlight! link CmpItemKindConstant TSConstant |
highlight! link CmpItemKindConstructor Function |
highlight! link CmpItemKindEnum Constant |
highlight! link CmpItemKindEnumMember TSField |
highlight! link CmpItemKindEvent Constant |
highlight! link CmpItemKindField TSField |
highlight! link CmpItemKindFunction Function |
highlight! link CmpItemKindInterface Constant |
highlight! link CmpItemKindKeyword Identifier |
highlight! link CmpItemKindMethod Function |
highlight! link CmpItemKindModule TSNamespace |
highlight! link CmpItemKindOperator Operator |
highlight! link CmpItemKindProperty TSProperty |
highlight! link CmpItemKindReference Keyword |
highlight! link CmpItemKindStruct Type |
highlight! link CmpItemKindTypeParameter TSField |
highlight! link CmpItemKindUnit Constant |
highlight! link CmpItemKindValue Keyword |
highlight! link CmpItemKindVariable TSVariable |
highlight! link CmpItemMenu Comment |
highlight! link CurSearch IncSearch |
highlight! link CursorColumn CursorLine |
highlight! link CursorIM Cursor |
highlight! link DapUIBreakpointsLine DapUILineNumber |
highlight! link DapUIFloatBorder FloatBorder |
highlight! link DapUIFrameName Normal |
highlight! link DapUILineNumber Number |
highlight! link DapUISource Keyword |
highlight! link DapUIThread String |
highlight! link DapUIType Type |
highlight! link DashboardCenter String |
highlight! link DashboardHeader Title |
highlight! link DashboardShortCut Identifier |
highlight! link Debug Special |
highlight! link Define PreProc |
highlight! link Delimiter Special |
highlight! link DiagnosticSignError DiagnosticError |
highlight! link DiagnosticSignHint DiagnosticHint |
highlight! link DiagnosticSignInfo DiagnosticInfo |
highlight! link DiagnosticSignWarn DiagnosticWarn |
highlight! link Exception Keyword |
highlight! link FidgetTask LineNr |
highlight! link FidgetTitle Title |
highlight! link Float Number |
highlight! link FocusedSymbol Search |
highlight! link Include PreProc |
highlight! link Label Conditional |
highlight! link LspSagaBorderTitle Title |
highlight! link LspSagaCodeActionContent String |
highlight! link LspSagaCodeActionTitle Title |
highlight! link Macro PreProc |
highlight! link MiniCursorword LspReferenceText |
highlight! link MiniCursorwordCurrent LspReferenceText |
highlight! link MiniIndentscopeSymbol Delimiter |
highlight! link MiniStarterHeader Title |
highlight! link MiniStarterInactive Comment |
highlight! link MiniStarterItem Normal |
highlight! link MiniStatuslineFilename StatusLine |
highlight! link MiniStatuslineInactive StatusLineNC |
highlight! link MiniSurround IncSearch |
highlight! link MiniTablineFill TabLineFill |
highlight! link NeoTreeDimText Conceal |
highlight! link NeoTreeNormalNC NeoTreeNormal |
highlight! link NeotestExpandMarker Conceal |
highlight! link NeotestIndent Conceal |
highlight! link NeotestTest Normal |
highlight! link NotifyDEBUGIcon NotifyDEBUGTitle |
highlight! link NotifyERRORIcon NotifyERRORTitle |
highlight! link NotifyINFOIcon NotifyINFOTitle |
highlight! link NotifyTRACEIcon NotifyTRACETitle |
highlight! link NotifyWARNIcon NotifyWARNTitle |
highlight! link NvimTreeGitRenamed NvimTreeGitDeleted |
highlight! link NvimTreeGitStaged NvimTreeGitStaged |
highlight! link NvimTreeVertSplit VertSplit |
highlight! link PmenuSbar Pmenu |
highlight! link PreCondit PreProc |
highlight! link Question MoreMsg |
highlight! link QuickFixLine CursorLine |
highlight! link Repeat Conditional |
highlight! link SignColumnSB SignColumn |
highlight! link SpecialChar Special |
highlight! link SpecialComment Special |
highlight! link SpecialKey NonText |
highlight! link StorageClass Type |
highlight! link Structure Type |
highlight! link SymbolOutlineConnector Conceal |
highlight! link Tag Special |
highlight! link TelescopeMatching Search |
highlight! link TelescopeSelection CursorLine |
highlight! link Typedef Type |
highlight! link VisualNOS visual |
highlight! link WhichKey Identifier |
highlight! link WhichKeyDesc Keyword |
highlight! link WhichKeyGroup Function |
highlight! link WhichKeySeparator Comment |
highlight! link WhichKeySeperator Comment |
highlight! link WhichKeyValue Comment |
highlight! link WildMenu Pmenu |
highlight! link illuminatedCurWord LspReferenceText |
highlight! link illuminatedWord LspReferenceText |
highlight! link lCursor Cursor |
highlight! link qfFileName Directory |
highlight! link qfLineNr lineNr
]])

local function set_terminal()
   -- stylua: ignore
  local colors = {
    "#3b4252", "#bf616a", "#a3be8c", "#ebcb8b", "#81a1c1", "#b48ead", "#88c0d0", "#e5e9f0", "#465780", "#d06f79", "#b1d196", "#f0d399", "#8cafd2", "#c895bf", "#93ccdc", "#e7ecf4",
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
