-- This file is autogenerated by NIGHTFOX.
-- Do not make changes directly to this file.

local cmd = vim.fn.has("nvim") == 0 and vim.command or vim.cmd

if vim.g.colors_name then
  cmd("hi clear")
end

cmd("set termguicolors")
cmd("set background=dark")
vim.g.colors_name = "carbonfox"

cmd([[
highlight @constant.builtin guifg=#5ae0df guibg=NONE gui=NONE guisp=NONE |
highlight @constructor guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight @danger guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight @error guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight @field guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight @field.rust guifg=#b6b8bb guibg=NONE gui=NONE guisp=NONE |
highlight @function.builtin guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight @function.macro guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight @keyword.function guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight @keyword.operator guifg=#b6b8bb guibg=NONE gui=bold guisp=NONE |
highlight @namespace guifg=#52bdff guibg=NONE gui=NONE guisp=NONE |
highlight @note guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight @operator guifg=#b6b8bb guibg=NONE gui=NONE guisp=NONE |
highlight @punctuation.bracket guifg=#b6b8bb guibg=NONE gui=NONE guisp=NONE |
highlight @punctuation.delimiter guifg=#b6b8bb guibg=NONE gui=NONE guisp=NONE |
highlight @punctuation.special guifg=#b6b8bb guibg=NONE gui=NONE guisp=NONE |
highlight @string.escape guifg=#2dc7c4 guibg=NONE gui=bold guisp=NONE |
highlight @string.regex guifg=#2dc7c4 guibg=NONE gui=NONE guisp=NONE |
highlight @text.reference guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight @type.builtin guifg=#52bdff guibg=NONE gui=NONE guisp=NONE |
highlight @uri guifg=#33b1ff guibg=NONE gui=bold guisp=NONE |
highlight @variable guifg=#dfdfe0 guibg=NONE gui=NONE guisp=NONE |
highlight @variable.builtin guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight @warning guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight AerialGuide guifg=#535353 guibg=NONE gui=NONE guisp=NONE |
highlight Bold guifg=NONE guibg=NONE gui=bold guisp=NONE |
highlight BufferCurrent guifg=#f2f4f8 guibg=#7b7c7e gui=NONE guisp=NONE |
highlight BufferCurrentIndex guifg=#78a9ff guibg=#7b7c7e gui=NONE guisp=NONE |
highlight BufferCurrentMod guifg=#be95ff guibg=#7b7c7e gui=NONE guisp=NONE |
highlight BufferCurrentSign guifg=#78a9ff guibg=#7b7c7e gui=NONE guisp=NONE |
highlight BufferCurrentTarget guifg=#ee5396 guibg=#7b7c7e gui=NONE guisp=NONE |
highlight BufferInactive guifg=#6e6f70 guibg=#0c0c0c gui=NONE guisp=NONE |
highlight BufferInactiveIndex guifg=#6e6f70 guibg=#0c0c0c gui=NONE guisp=NONE |
highlight BufferInactiveMod guifg=#2f2939 guibg=#0c0c0c gui=NONE guisp=NONE |
highlight BufferInactiveSign guifg=#353535 guibg=#0c0c0c gui=NONE guisp=NONE |
highlight BufferInactiveTarget guifg=#ee5396 guibg=#0c0c0c gui=NONE guisp=NONE |
highlight BufferTabpage guifg=#353535 guibg=#0c0c0c gui=NONE guisp=NONE |
highlight BufferTabpages guifg=NONE guibg=#0c0c0c gui=NONE guisp=NONE |
highlight BufferVisible guifg=#f2f4f8 guibg=#0c0c0c gui=NONE guisp=NONE |
highlight BufferVisibleIndex guifg=#78a9ff guibg=#0c0c0c gui=NONE guisp=NONE |
highlight BufferVisibleMod guifg=#be95ff guibg=#0c0c0c gui=NONE guisp=NONE |
highlight BufferVisibleSign guifg=#78a9ff guibg=#0c0c0c gui=NONE guisp=NONE |
highlight BufferVisibleTarget guifg=#ee5396 guibg=#0c0c0c gui=NONE guisp=NONE |
highlight CmpDocumentation guifg=#f2f4f8 guibg=#0c0c0c gui=NONE guisp=NONE |
highlight CmpDocumentationBorder guifg=#2a2a2a guibg=#0c0c0c gui=NONE guisp=NONE |
highlight CmpItemAbbr guifg=#f2f4f8 guibg=NONE gui=NONE guisp=NONE |
highlight CmpItemAbbrDeprecated guifg=#7b7c7e guibg=NONE gui=strikethrough guisp=NONE |
highlight CmpItemAbbrMatch guifg=#8cb6ff guibg=NONE gui=NONE guisp=NONE |
highlight CmpItemAbbrMatchFuzzy guifg=#8cb6ff guibg=NONE gui=NONE guisp=NONE |
highlight CmpItemKindDefault guifg=#b6b8bb guibg=NONE gui=NONE guisp=NONE |
highlight CmpItemKindSnippet guifg=#b6b8bb guibg=NONE gui=NONE guisp=NONE |
highlight CocInlayHint guifg=#6e6f70 guibg=#252525 gui=NONE guisp=NONE |
highlight ColorColumn guifg=NONE guibg=#252525 gui=NONE guisp=NONE |
highlight Comment guifg=#6e6f70 guibg=NONE gui=NONE guisp=NONE |
highlight Conceal guifg=#535353 guibg=NONE gui=NONE guisp=NONE |
highlight Conditional guifg=#c8a5ff guibg=NONE gui=NONE guisp=NONE |
highlight Constant guifg=#5ae0df guibg=NONE gui=NONE guisp=NONE |
highlight Cursor guifg=#161616 guibg=#f2f4f8 gui=NONE guisp=NONE |
highlight CursorLine guifg=NONE guibg=#353535 gui=NONE guisp=NONE |
highlight CursorLineNr guifg=#be95ff guibg=NONE gui=bold guisp=NONE |
highlight DapUIBreakpointsCurrentLine guifg=#3ddbd9 guibg=NONE gui=bold guisp=NONE |
highlight DapUIBreakpointsDisabledLine guifg=#6e6f70 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIBreakpointsInfo guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight DapUIBreakpointsPath guifg=#52bdff guibg=NONE gui=NONE guisp=NONE |
highlight DapUIDecoration guifg=#7b7c7e guibg=NONE gui=NONE guisp=NONE |
highlight DapUIModifiedValue guifg=#dfdfe0 guibg=NONE gui=bold guisp=NONE |
highlight DapUIScope guifg=#52bdff guibg=NONE gui=NONE guisp=NONE |
highlight DapUIStoppedThread guifg=#52bdff guibg=NONE gui=NONE guisp=NONE |
highlight DapUIValue guifg=#dfdfe0 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIVariable guifg=#dfdfe0 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIWatchesEmpty guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIWatchesError guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight DapUIWatchesValue guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight DashboardFooter guifg=#5ae0df guibg=NONE gui=italic guisp=NONE |
highlight DiagnosticError guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight DiagnosticHint guifg=#3ddbd9 guibg=NONE gui=NONE guisp=NONE |
highlight DiagnosticInfo guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight DiagnosticUnderlineError guifg=NONE guibg=NONE gui=undercurl guisp=#ee5396 |
highlight DiagnosticUnderlineHint guifg=NONE guibg=NONE gui=undercurl guisp=#3ddbd9 |
highlight DiagnosticUnderlineInfo guifg=NONE guibg=NONE gui=undercurl guisp=#78a9ff |
highlight DiagnosticUnderlineWarn guifg=NONE guibg=NONE gui=undercurl guisp=#be95ff |
highlight DiagnosticVirtualTextError guifg=#ee5396 guibg=#361f29 gui=NONE guisp=NONE |
highlight DiagnosticVirtualTextHint guifg=#3ddbd9 guibg=#1c3433 gui=NONE guisp=NONE |
highlight DiagnosticVirtualTextInfo guifg=#78a9ff guibg=#252c39 gui=NONE guisp=NONE |
highlight DiagnosticVirtualTextWarn guifg=#be95ff guibg=#2f2939 gui=NONE guisp=NONE |
highlight DiagnosticWarn guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight DiffAdd guifg=NONE guibg=#172b20 gui=NONE guisp=NONE |
highlight DiffChange guifg=NONE guibg=#222833 gui=NONE guisp=NONE |
highlight DiffDelete guifg=NONE guibg=#311d26 gui=NONE guisp=NONE |
highlight DiffText guifg=NONE guibg=#1c3c50 gui=NONE guisp=NONE |
highlight Directory guifg=#8cb6ff guibg=NONE gui=NONE guisp=NONE |
highlight EndOfBuffer guifg=#161616 guibg=NONE gui=NONE guisp=NONE |
highlight Error guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight ErrorMsg guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight FernBranchText guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight FloatBorder guifg=#7b7c7e guibg=NONE gui=NONE guisp=NONE |
highlight FoldColumn guifg=#7b7c7e guibg=NONE gui=NONE guisp=NONE |
highlight Folded guifg=#7b7c7e guibg=#252525 gui=NONE guisp=NONE |
highlight Function guifg=#8cb6ff guibg=NONE gui=NONE guisp=NONE |
highlight GitGutterAdd guifg=#25be6a guibg=NONE gui=NONE guisp=NONE |
highlight GitGutterChange guifg=#08bdba guibg=NONE gui=NONE guisp=NONE |
highlight GitGutterDelete guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight GitSignsAdd guifg=#25be6a guibg=NONE gui=NONE guisp=NONE |
highlight GitSignsChange guifg=#08bdba guibg=NONE gui=NONE guisp=NONE |
highlight GitSignsDelete guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette0 guifg=#282828 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette1 guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette10 guifg=#46c880 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette11 guifg=#2dc7c4 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette12 guifg=#8cb6ff guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette13 guifg=#c8a5ff guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette14 guifg=#52bdff guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette15 guifg=#e4e4e5 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette2 guifg=#25be6a guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette3 guifg=#08bdba guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette4 guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette5 guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette6 guifg=#33b1ff guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette7 guifg=#e4e4e5 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette8 guifg=#484848 guibg=NONE gui=NONE guisp=NONE |
highlight GlyphPalette9 guifg=#f16da6 guibg=NONE gui=NONE guisp=NONE |
highlight HopNextKey guifg=#33b1ff guibg=NONE gui=bold guisp=NONE |
highlight HopNextKey1 guifg=#78a9ff guibg=NONE gui=bold guisp=NONE |
highlight HopNextKey2 guifg=#6690d9 guibg=NONE gui=NONE guisp=NONE |
highlight HopUnmatched guifg=#6e6f70 guibg=NONE gui=NONE guisp=NONE |
highlight Identifier guifg=#33b1ff guibg=NONE gui=NONE guisp=NONE |
highlight IncSearch guifg=#000000 guibg=#3ddbd9 gui=NONE guisp=NONE |
highlight Italic guifg=NONE guibg=NONE gui=italic guisp=NONE |
highlight Keyword guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight LightspeedGreyWash guifg=#6e6f70 guibg=NONE gui=NONE guisp=NONE |
highlight LineNr guifg=#7b7c7e guibg=NONE gui=NONE guisp=NONE |
highlight LspCodeLens guifg=#6e6f70 guibg=NONE gui=NONE guisp=NONE |
highlight LspCodeLensSeparator guifg=#7b7c7e guibg=NONE gui=NONE guisp=NONE |
highlight LspFloatWinBorder guifg=#7b7c7e guibg=NONE gui=NONE guisp=NONE |
highlight LspFloatWinNormal guifg=NONE guibg=#0c0c0c gui=NONE guisp=NONE |
highlight LspInlayHint guifg=#6e6f70 guibg=#252525 gui=NONE guisp=NONE |
highlight LspReferenceRead guifg=NONE guibg=#2a2a2a gui=NONE guisp=NONE |
highlight LspReferenceText guifg=NONE guibg=#2a2a2a gui=NONE guisp=NONE |
highlight LspReferenceWrite guifg=NONE guibg=#2a2a2a gui=NONE guisp=NONE |
highlight LspSagaCodeActionBorder guifg=#7b7c7e guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaDefPreviewBorder guifg=#7b7c7e guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaFinderSelection guifg=#2a2a2a guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaHoverBorder guifg=#7b7c7e guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaRenameBorder guifg=#7b7c7e guibg=NONE gui=NONE guisp=NONE |
highlight LspSagaSignatureHelpBorder guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight LspSignatureActiveParameter guifg=#525253 guibg=NONE gui=NONE guisp=NONE |
highlight LspTroubleCount guifg=#be95ff guibg=#7b7c7e gui=NONE guisp=NONE |
highlight LspTroubleNormal guifg=#7b7c7e guibg=#0c0c0c gui=NONE guisp=NONE |
highlight LspTroubleText guifg=#b6b8bb guibg=NONE gui=NONE guisp=NONE |
highlight MatchParen guifg=#be95ff guibg=NONE gui=bold guisp=NONE |
highlight MiniCompletionActiveParameter guifg=NONE guibg=NONE gui=underline guisp=NONE |
highlight MiniIndentscopePrefix guifg=NONE guibg=NONE gui=nocombine guisp=NONE |
highlight MiniJump guifg=#0c0c0c guibg=#be95ff gui=NONE guisp=NONE |
highlight MiniJump2dSpot guifg=#33b1ff guibg=NONE gui=bold guisp=NONE |
highlight MiniStarterCurrent guifg=NONE guibg=NONE gui=nocombine guisp=NONE |
highlight MiniStarterFooter guifg=#5ae0df guibg=NONE gui=italic guisp=NONE |
highlight MiniStarterItemBullet guifg=#7b7c7e guibg=NONE gui=NONE guisp=NONE |
highlight MiniStarterItemPrefix guifg=#ff7eb6 guibg=NONE gui=NONE guisp=NONE |
highlight MiniStarterQuery guifg=#25be6a guibg=NONE gui=NONE guisp=NONE |
highlight MiniStarterSection guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight MiniStatuslineDevinfo guifg=#b6b8bb guibg=#252525 gui=NONE guisp=NONE |
highlight MiniStatuslineFileinfo guifg=#b6b8bb guibg=#252525 gui=NONE guisp=NONE |
highlight MiniStatuslineModeCommand guifg=#0c0c0c guibg=#08bdba gui=bold guisp=NONE |
highlight MiniStatuslineModeInsert guifg=#0c0c0c guibg=#25be6a gui=bold guisp=NONE |
highlight MiniStatuslineModeNormal guifg=#0c0c0c guibg=#33b1ff gui=bold guisp=NONE |
highlight MiniStatuslineModeOther guifg=#0c0c0c guibg=#78a9ff gui=bold guisp=NONE |
highlight MiniStatuslineModeReplace guifg=#0c0c0c guibg=#ee5396 gui=bold guisp=NONE |
highlight MiniStatuslineModeVisual guifg=#0c0c0c guibg=#be95ff gui=bold guisp=NONE |
highlight MiniTablineCurrent guifg=#b6b8bb guibg=#535353 gui=bold guisp=NONE |
highlight MiniTablineHidden guifg=#7b7c7e guibg=#252525 gui=NONE guisp=NONE |
highlight MiniTablineModifiedCurrent guifg=#535353 guibg=#b6b8bb gui=bold guisp=NONE |
highlight MiniTablineModifiedHidden guifg=#252525 guibg=#7b7c7e gui=NONE guisp=NONE |
highlight MiniTablineModifiedVisible guifg=#252525 guibg=#b6b8bb gui=NONE guisp=NONE |
highlight MiniTablineTabpagesection guifg=#f2f4f8 guibg=#161616 gui=bold guisp=NONE |
highlight MiniTablineVisible guifg=#b6b8bb guibg=#252525 gui=NONE guisp=NONE |
highlight MiniTestEmphasis guifg=NONE guibg=NONE gui=bold guisp=NONE |
highlight MiniTestFail guifg=#ee5396 guibg=NONE gui=bold guisp=NONE |
highlight MiniTestPass guifg=#25be6a guibg=NONE gui=bold guisp=NONE |
highlight MiniTrailspace guifg=NONE guibg=#ee5396 gui=NONE guisp=NONE |
highlight ModeMsg guifg=#be95ff guibg=NONE gui=bold guisp=NONE |
highlight ModesCopy guifg=NONE guibg=#08bdba gui=NONE guisp=NONE |
highlight ModesDelete guifg=NONE guibg=#ee5396 gui=NONE guisp=NONE |
highlight ModesInsert guifg=NONE guibg=#33b1ff gui=NONE guisp=NONE |
highlight ModesVisual guifg=NONE guibg=#be95ff gui=NONE guisp=NONE |
highlight MoreMsg guifg=#78a9ff guibg=NONE gui=bold guisp=NONE |
highlight NeoTreeDirectoryIcon guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeDirectoryName guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeDotfile guifg=#6690d9 guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeFileName guifg=#b6b8bb guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeFileNameOpened guifg=#f2f4f8 guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitAdded guifg=#25be6a guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitConflict guifg=#3ddbd9 guibg=NONE gui=italic guisp=NONE |
highlight NeoTreeGitDeleted guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitIgnored guifg=#6e6f70 guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitModified guifg=#08bdba guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeGitUntracked guifg=#a27fd9 guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeIndentMarker guifg=#535353 guibg=NONE gui=NONE guisp=NONE |
highlight NeoTreeNormal guifg=#f2f4f8 guibg=#0c0c0c gui=NONE guisp=NONE |
highlight NeoTreeRootName guifg=#3ddbd9 guibg=NONE gui=bold guisp=NONE |
highlight NeoTreeSymbolicLinkTarget guifg=#d96b9b guibg=NONE gui=NONE guisp=NONE |
highlight NeogitBranch guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight NeogitDiffAdd guifg=#25be6a guibg=NONE gui=NONE guisp=NONE |
highlight NeogitDiffAddHighlight guifg=NONE guibg=#172b20 gui=NONE guisp=NONE |
highlight NeogitDiffContextHighlight guifg=NONE guibg=#252525 gui=NONE guisp=NONE |
highlight NeogitDiffDelete guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight NeogitDiffDeleteHighlight guifg=NONE guibg=#311d26 gui=NONE guisp=NONE |
highlight NeogitHunkHeader guifg=#78a9ff guibg=#353535 gui=NONE guisp=NONE |
highlight NeogitHunkHeaderHighlight guifg=#78a9ff guibg=#2a2a2a gui=NONE guisp=NONE |
highlight NeogitNotificationError guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight NeogitNotificationInfo guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight NeogitNotificationWarning guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight NeogitRemote guifg=#3ddbd9 guibg=NONE gui=NONE guisp=NONE |
highlight NonText guifg=#535353 guibg=NONE gui=NONE guisp=NONE |
highlight Normal guifg=#f2f4f8 guibg=#161616 gui=NONE guisp=NONE |
highlight NormalFloat guifg=#f2f4f8 guibg=#0c0c0c gui=NONE guisp=NONE |
highlight NormalNC guifg=#f2f4f8 guibg=#161616 gui=NONE guisp=NONE |
highlight NotifyDEBUGBorder guifg=#2a7878 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyDEBUGTitle guifg=#3ddbd9 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyERRORBorder guifg=#823456 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyERRORTitle guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyINFOBorder guifg=#47608a guibg=NONE gui=NONE guisp=NONE |
highlight NotifyINFOTitle guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight NotifyTRACEBorder guifg=#535353 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyTRACETitle guifg=#6e6f70 guibg=NONE gui=NONE guisp=NONE |
highlight NotifyWARNBorder guifg=#6a568a guibg=NONE gui=NONE guisp=NONE |
highlight NotifyWARNTitle guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight Number guifg=#3ddbd9 guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeEmptyFolderName guifg=#7b7c7e guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeFolderIcon guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeFolderName guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeGitDeleted guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeGitDirty guifg=#08bdba guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeGitMerge guifg=#3ddbd9 guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeGitNew guifg=#25be6a guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeImageFile guifg=#bebebe guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeIndentMarker guifg=#535353 guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeNormal guifg=#f2f4f8 guibg=#0c0c0c gui=NONE guisp=NONE |
highlight NvimTreeOpenedFile guifg=#ff91c1 guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeOpenedFolderName guifg=#8cb6ff guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeRootFolder guifg=#3ddbd9 guibg=NONE gui=bold guisp=NONE |
highlight NvimTreeSpecialFile guifg=#33b1ff guibg=NONE gui=NONE guisp=NONE |
highlight NvimTreeSymlink guifg=#d96b9b guibg=NONE gui=NONE guisp=NONE |
highlight Operator guifg=#b6b8bb guibg=NONE gui=NONE guisp=NONE |
highlight Pmenu guifg=#f2f4f8 guibg=#2a2a2a gui=NONE guisp=NONE |
highlight PmenuSel guifg=NONE guibg=#525253 gui=NONE guisp=NONE |
highlight PmenuThumb guifg=NONE guibg=#525253 gui=NONE guisp=NONE |
highlight PounceAccept guifg=#161616 guibg=#5ae0df gui=NONE guisp=NONE |
highlight PounceAcceptBest guifg=#161616 guibg=#52bdff gui=NONE guisp=NONE |
highlight PounceGap guifg=#f2f4f8 guibg=#2a2a2a gui=NONE guisp=NONE |
highlight PounceMatch guifg=#f2f4f8 guibg=#525253 gui=NONE guisp=NONE |
highlight PreProc guifg=#ff91c1 guibg=NONE gui=NONE guisp=NONE |
highlight Search guifg=#f2f4f8 guibg=#525253 gui=NONE guisp=NONE |
highlight SignColumn guifg=#7b7c7e guibg=NONE gui=NONE guisp=NONE |
highlight Sneak guifg=#0c0c0c guibg=#be95ff gui=NONE guisp=NONE |
highlight SneakScope guifg=NONE guibg=#2a2a2a gui=NONE guisp=NONE |
highlight Special guifg=#8cb6ff guibg=NONE gui=NONE guisp=NONE |
highlight SpellBad guifg=NONE guibg=NONE gui=undercurl guisp=#ee5396 |
highlight SpellCap guifg=NONE guibg=NONE gui=undercurl guisp=#be95ff |
highlight SpellLocal guifg=NONE guibg=NONE gui=undercurl guisp=#78a9ff |
highlight SpellRare guifg=NONE guibg=NONE gui=undercurl guisp=#78a9ff |
highlight Statement guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight StatusLine guifg=#b6b8bb guibg=#0c0c0c gui=NONE guisp=NONE |
highlight StatusLineNC guifg=#7b7c7e guibg=#0c0c0c gui=NONE guisp=NONE |
highlight String guifg=#25be6a guibg=NONE gui=NONE guisp=NONE |
highlight Substitute guifg=#161616 guibg=#ee5396 gui=NONE guisp=NONE |
highlight TabLine guifg=#b6b8bb guibg=#252525 gui=NONE guisp=NONE |
highlight TabLineFill guifg=NONE guibg=#0c0c0c gui=NONE guisp=NONE |
highlight TabLineSel guifg=#161616 guibg=#7b7c7e gui=NONE guisp=NONE |
highlight TelescopeBorder guifg=#535353 guibg=NONE gui=NONE guisp=NONE |
highlight TelescopeSelectionCaret guifg=#3ddbd9 guibg=NONE gui=NONE guisp=NONE |
highlight Title guifg=#8cb6ff guibg=NONE gui=NONE guisp=NONE |
highlight Todo guifg=#161616 guibg=#78a9ff gui=NONE guisp=NONE |
highlight Type guifg=#08bdba guibg=NONE gui=NONE guisp=NONE |
highlight Underlined guifg=NONE guibg=NONE gui=underline guisp=NONE |
highlight VertSplit guifg=#0c0c0c guibg=NONE gui=NONE guisp=NONE |
highlight Visual guifg=NONE guibg=#2a2a2a gui=NONE guisp=NONE |
highlight WarningMsg guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight WhichKeyFloat guifg=NONE guibg=#0c0c0c gui=NONE guisp=NONE |
highlight Whitespace guifg=#353535 guibg=NONE gui=NONE guisp=NONE |
highlight WinBar guifg=#7b7c7e guibg=#161616 gui=bold guisp=NONE |
highlight WinBarNC guifg=#7b7c7e guibg=#161616 gui=bold guisp=NONE |
highlight diffAdded guifg=#25be6a guibg=NONE gui=NONE guisp=NONE |
highlight diffChanged guifg=#08bdba guibg=NONE gui=NONE guisp=NONE |
highlight diffFile guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight diffIndexLine guifg=#ff91c1 guibg=NONE gui=NONE guisp=NONE |
highlight diffLine guifg=#5ae0df guibg=NONE gui=NONE guisp=NONE |
highlight diffNewFile guifg=#3ddbd9 guibg=NONE gui=NONE guisp=NONE |
highlight diffOldFile guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight diffRemoved guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol1 guifg=#ee5396 guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol2 guifg=#08bdba guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol3 guifg=#25be6a guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol4 guifg=#78a9ff guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol5 guifg=#33b1ff guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol6 guifg=#be95ff guibg=NONE gui=NONE guisp=NONE |
highlight rainbowcol7 guifg=#ff7eb6 guibg=NONE gui=NONE guisp=NONE |
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
    "#282828", "#ee5396", "#25be6a", "#08bdba", "#78a9ff", "#be95ff", "#33b1ff", "#dfdfe0", "#484848", "#f16da6", "#46c880", "#2dc7c4", "#8cb6ff", "#c8a5ff", "#52bdff", "#e4e4e5",
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
