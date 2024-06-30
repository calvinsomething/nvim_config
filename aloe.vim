" Name:         aloe
" Author:       CalvinSomething
" License:      Same as Vim

set background=dark
set notgc

hi clear

hi! link Terminal Normal
hi! link Identifier Normal
hi! link NormalFloat Normal
hi! link FloatBorder Normal
hi! link Type Statement
hi! link Special Statement
hi! link Directory Statement
hi! link String Statement
hi! link Character String
hi! link Constant String
hi! link Title Statement
hi! link Todo Statement
hi! link Search Visual
hi! link IncSearch Visual
hi! link CurSearch Visual
hi! link StatuslineNC Statusline
hi! link StatuslineTerm Statusline
hi! link StatuslineTermNC Statusline
hi! link lualine_a_normal Statusline
hi! link lualine_b_normal Statusline
hi! link LineNr Comment
hi! link LineNrAbove Comment
hi! link LineNrBelow Comment
hi! link Tabline Visual
hi! link TablineFill Visual

hi Normal ctermfg=194 ctermbg=NONE cterm=NONE
hi Statusline ctermfg=194 ctermbg=29 cterm=NONE
hi Statement ctermfg=121 ctermbg=NONE cterm=NONE
hi PreProc ctermfg=121 ctermbg=NONE cterm=italic
hi Todo ctermfg=65 ctermbg=NONE cterm=underline
hi Comment ctermfg=65 ctermbg=NONE cterm=NONE
hi Visual ctermfg=232 ctermbg=121 cterm=NONE
"hi Type ctermfg=114 ctermbg=NONE cterm=NONE
"hi Identifier ctermfg=109 ctermbg=NONE cterm=NONE
"hi Special ctermfg=66 ctermbg=NONE cterm=NONE
"hi PreProc ctermfg=142 ctermbg=NONE cterm=NONE
"hi Directory ctermfg=109 ctermbg=NONE cterm=bold
hi VertSplit ctermfg=NONE ctermbg=157 cterm=NONE
hi TabLineSel ctermfg=NONE ctermbg=NONE cterm=bold
hi DiffAdd ctermfg=231 ctermbg=29 cterm=NONE
hi DiffChange ctermfg=145 ctermbg=59 cterm=NONE
hi DiffText ctermfg=194 ctermbg=59 cterm=NONE

hi! link MessageWindow Pmenu
hi! link PopupNotification Todo
hi! link javaScriptFunction Statement
hi! link javaScriptIdentifier Statement
hi! link sqlKeyword Statement
hi! link yamlBlockMappingKey Statement
hi! link rubyMacro Statement
hi! link rubyDefine Statement
hi! link vimVar Normal
hi! link vimOper Normal
hi! link vimSep Normal
hi! link vimParenSep Normal
hi! link vimCommentString Comment
hi! link gitCommitSummary Title
hi! link markdownUrl String
hi! link elixirOperator Statement
hi! link elixirKeyword Statement
hi! link elixirBlockDefinition Statement
hi! link elixirDefine Statement
hi! link elixirPrivateDefine Statement
hi! link elixirGuard Statement
hi! link elixirPrivateGuard Statement
hi! link elixirModuleDefine Statement
hi! link elixirProtocolDefine Statement
hi! link elixirImplDefine Statement
hi! link elixirRecordDefine Statement
hi! link elixirPrivateRecordDefine Statement
hi! link elixirMacroDefine Statement
hi! link elixirPrivateMacroDefine Statement
hi! link elixirDelegateDefine Statement
hi! link elixirOverridableDefine Statement
hi! link elixirExceptionDefine Statement
hi! link elixirCallbackDefine Statement
hi! link elixirStructDefine Statement
hi! link elixirExUnitMacro Statement
hi! link elixirInclude Statement
hi! link elixirAtom PreProc
hi! link elixirDocTest String
hi ALEErrorSign ctermfg=167 ctermbg=NONE cterm=NONE
hi ALEInfoSign ctermfg=186 ctermbg=NONE cterm=NONE
hi ALEWarningSign ctermfg=139 ctermbg=NONE cterm=NONE
hi ALEError ctermfg=234 ctermbg=167 cterm=NONE
hi ALEVirtualTextError ctermfg=234 ctermbg=167 cterm=NONE
hi ALEWarning ctermfg=234 ctermbg=139 cterm=NONE
hi ALEVirtualTextWarning ctermfg=234 ctermbg=139 cterm=NONE
hi ALEInfo ctermfg=186 ctermbg=NONE cterm=NONE
hi ALEVirtualTextInfo ctermfg=186 ctermbg=NONE cterm=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
hi ToolbarButton ctermfg=247 ctermbg=234 cterm=bold,reverse
hi QuickFixLine ctermfg=234 ctermbg=67 cterm=NONE
hi NonText ctermfg=240 ctermbg=NONE cterm=NONE
hi EndOfBuffer ctermfg=240 ctermbg=NONE cterm=NONE
hi SpecialKey ctermfg=240 ctermbg=NONE cterm=NONE
hi FoldColumn ctermfg=240 ctermbg=NONE cterm=NONE
hi VisualNOS ctermfg=234 ctermbg=66 cterm=NONE
hi Pmenu ctermfg=NONE ctermbg=235 cterm=NONE
hi PmenuThumb ctermfg=NONE ctermbg=243 cterm=NONE
hi PmenuSbar ctermfg=NONE ctermbg=NONE cterm=NONE
hi PmenuSel ctermfg=234 ctermbg=144 cterm=NONE
hi SignColumn ctermfg=NONE ctermbg=NONE cterm=NONE
hi Error ctermfg=167 ctermbg=234 cterm=reverse
hi ErrorMsg ctermfg=167 ctermbg=234 cterm=reverse
hi ModeMsg ctermfg=234 ctermbg=186 cterm=NONE
hi MoreMsg ctermfg=108 ctermbg=NONE cterm=NONE
hi Question ctermfg=144 ctermbg=NONE cterm=NONE
hi WarningMsg ctermfg=173 ctermbg=NONE cterm=NONE
hi MatchParen ctermfg=66 ctermbg=234 cterm=reverse
hi WildMenu ctermfg=234 ctermbg=186 cterm=NONE
hi debugPC ctermfg=234 ctermbg=67 cterm=NONE
hi debugBreakpoint ctermfg=234 ctermbg=173 cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=236 cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=236 cterm=NONE
hi Folded ctermfg=247 ctermbg=235 cterm=NONE
hi ColorColumn ctermfg=NONE ctermbg=235 cterm=NONE
hi SpellBad ctermfg=167 ctermbg=NONE cterm=underline
hi SpellCap ctermfg=67 ctermbg=NONE cterm=underline
hi SpellLocal ctermfg=108 ctermbg=NONE cterm=underline
hi SpellRare ctermfg=182 ctermbg=NONE cterm=underline
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
hi Conceal ctermfg=243 ctermbg=NONE cterm=NONE
hi Ignore ctermfg=NONE ctermbg=NONE cterm=NONE
hi Debug ctermfg=66 ctermbg=NONE cterm=NONE
hi DiffDelete ctermfg=137 ctermbg=NONE cterm=NONE
hi diffAdded ctermfg=108 ctermbg=NONE cterm=NONE
hi diffRemoved ctermfg=167 ctermbg=NONE cterm=NONE
hi diffSubname ctermfg=139 ctermbg=NONE cterm=NONE
