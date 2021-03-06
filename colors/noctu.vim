" noctu.vim - Vim color scheme for 16-color terminals
" --------------------------------------------------------------
" Author:   Noah Frederick (http://noahfrederick.com/)
" Version:  1.8.0
" --------------------------------------------------------------

" Scheme setup {{{
set background=light
hi! clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "noctu"
"}}}

" Vim UI {{{
hi Normal              ctermfg=7
hi Cursor              ctermfg=7     ctermbg=1
hi CursorLine          ctermfg=7     ctermbg=11    cterm=NONE
hi MatchParen          ctermfg=7     ctermbg=NONE  cterm=underline
hi Pmenu               ctermfg=0     ctermbg=7
hi PmenuThumb          ctermbg=7
hi PmenuSBar           ctermbg=5
hi PmenuSel            ctermfg=0     ctermbg=5
hi ColorColumn         ctermbg=11
hi SpellBad            ctermfg=1     ctermbg=NONE  cterm=underline
hi SpellCap            ctermfg=10    ctermbg=NONE  cterm=underline
hi SpellRare           ctermfg=3     ctermbg=NONE  cterm=underline
hi SpellLocal          ctermfg=13    ctermbg=NONE  cterm=underline
hi NonText             ctermfg=5
hi LineNr              ctermfg=5     ctermbg=NONE
hi CursorLineNr        ctermfg=3     ctermbg=0
hi Visual              ctermfg=7     ctermbg=11
hi IncSearch           ctermfg=7     ctermbg=11    cterm=bold,italic
hi Search              ctermfg=5     ctermbg=0     cterm=italic
hi! link SearchLight IncSearch
hi StatusLine          ctermfg=15    ctermbg=0     cterm=bold
hi StatusLineNC        ctermfg=15    ctermbg=0     cterm=bold
hi StatusLineTerm      ctermfg=15    ctermbg=0     cterm=bold
hi StatusLineTermNC    ctermfg=15    ctermbg=0     cterm=bold

hi VertSplit           ctermfg=15    ctermbg=0     cterm=NONE

hi TabLine             ctermbg=12    ctermfg=7    cterm=inverse
hi TabLineSel          ctermbg=0     ctermfg=7    cterm=inverse,bold
hi TabLineBetween      ctermbg=0     ctermfg=7    cterm=inverse
hi TabLineFill         ctermfg=0     ctermbg=7    cterm=inverse,underline

hi Folded              ctermfg=7     ctermbg=0     cterm=none
hi Conceal             ctermfg=6     ctermbg=NONE
hi Directory           ctermfg=7
hi Title               ctermfg=7     cterm=bold,italic
hi ErrorMsg            ctermfg=1     ctermbg=0
hi DiffAdd             ctermfg=2     ctermbg=0
hi DiffChange          ctermfg=4     ctermbg=0
hi DiffDelete          ctermfg=1     ctermbg=0
hi DiffText            ctermfg=0     ctermbg=4     cterm=bold
hi User1               ctermfg=1     ctermbg=0
hi User2               ctermfg=4     ctermbg=0
hi User3               ctermfg=2     ctermbg=0
hi User4               ctermfg=3     ctermbg=0
hi User5               ctermfg=5     ctermbg=0
hi User6               ctermfg=6     ctermbg=0
hi User7               ctermfg=7     ctermbg=0
hi User8               ctermfg=5     ctermbg=0
hi User9               ctermfg=15    ctermbg=5
hi! link CursorColumn  CursorLine
hi! link SignColumn    LineNr
hi! WildMenu           ctermfg=0 ctermbg=7
hi! FoldColumn         ctermbg=0 ctermfg=15
hi! link WarningMsg    ErrorMsg
hi! link MoreMsg       Title
hi! link Question      MoreMsg
hi! link ModeMsg       MoreMsg
hi! link SpecialKey    NonText
hi! Beacon             ctermfg=7     ctermbg=11
hi! BeaconDefault      ctermfg=7     ctermbg=11

"}}}
" Generic syntax {{{
hi Delimiter       ctermfg=7
hi Comment         ctermfg=15
hi Underlined      ctermfg=4   cterm=underline
hi Type            ctermfg=7   cterm=bold
hi String          ctermfg=15
hi Keyword         ctermfg=7   cterm=bold
" hi Keyword         ctermfg=9   cterm=bold
hi Todo            ctermfg=15  ctermbg=NONE     cterm=bold,underline
hi link Function   keyword
hi Identifier      ctermfg=7   cterm=bold
hi Statement       ctermfg=7   cterm=bold
hi Constant        ctermfg=7
hi Number          ctermfg=4
hi Boolean         ctermfg=4
hi Special         ctermfg=7
" hi Special         ctermfg=9
hi Ignore          ctermfg=0
" hi PreProc         ctermfg=5   cterm=bold
hi PreProc         ctermfg=7   cterm=bold
hi! link Operator  Delimiter
hi! link Error     ErrorMsg

"}}}
" HTML {{{
hi htmlTagName              ctermfg=2
hi htmlTag                  ctermfg=2
hi htmlArg                  ctermfg=10
hi htmlH1                   cterm=bold
hi htmlBold                 cterm=bold
hi htmlItalic               cterm=underline
hi htmlUnderline            cterm=underline
hi htmlBoldItalic           cterm=bold,italic
hi htmlBoldUnderline        cterm=bold,underline
hi htmlUnderlineItalic      cterm=underline,italic
hi htmlBoldUnderlineItalic  cterm=bold,underline,italic
hi! link htmlLink           Underlined
hi! link htmlEndTag         htmlTag

"}}}
" XML {{{
hi xmlTagName       ctermfg=4
hi xmlTag           ctermfg=4
hi! link xmlString  xmlTagName
hi! link xmlAttrib  xmlTag
hi! link xmlEndTag  xmlTag
hi! link xmlEqual   xmlTag

"}}}
" JavaScript {{{
hi! link javaScript        Normal
hi! link javaScriptBraces  Delimiter

"}}}
" PHP {{{
hi phpSpecialFunction    ctermfg=5
hi phpIdentifier         ctermfg=3
hi phpParent             ctermfg=5
hi! link phpVarSelector  phpIdentifier
hi! link phpHereDoc      String
hi! link phpDefine       Statement

"}}}
" Markdown {{{
hi! link markdownHeadingRule        NonText
hi! link markdownHeadingDelimiter   markdownHeadingRule
hi! link markdownLinkDelimiter      Delimiter
hi! link markdownURLDelimiter       Delimiter
hi! link markdownCodeDelimiter      NonText
hi! link markdownLinkTextDelimiter  markdownLinkDelimiter
hi! link markdownUrl                markdownLinkText
hi! link markdownAutomaticLink      markdownLinkText
hi! link markdownCodeBlock          String
hi markdownCode                     cterm=bold
hi markdownBold                     cterm=bold
hi markdownItalic                   cterm=underline

"}}}
" Ruby {{{
hi! link rubyDefine                 Statement
hi! link rubyLocalVariableOrMethod  Identifier
hi! link rubyConstant               Constant
hi! link rubyInstanceVariable       Number
hi! link rubyStringDelimiter        rubyString

"}}}
" Git {{{
hi gitCommitBranch               ctermfg=3
hi gitCommitSelectedType         ctermfg=10
hi gitCommitSelectedFile         ctermfg=2
hi gitCommitUnmergedType         ctermfg=1
hi gitCommitUnmergedFile         ctermfg=1
hi! link gitCommitFile           Directory
hi! link gitCommitUntrackedFile  gitCommitUnmergedFile
hi! link gitCommitDiscardedType  gitCommitUnmergedType
hi! link gitCommitDiscardedFile  gitCommitUnmergedFile

"}}}
" Vim {{{
hi! link vimSetSep    Delimiter
hi! link vimContinue  Delimiter
hi! link vimHiAttrib  Constant

"}}}
" LESS {{{
hi lessVariable             ctermfg=3
hi! link lessVariableValue  Normal

"}}}
" NERDTree {{{
hi! link NERDTreeHelp      Comment
hi! link NERDTreeExecFile  String

"}}}
" Vimwiki {{{
hi! link VimwikiHeaderChar  markdownHeadingDelimiter
hi! link VimwikiList        markdownListMarker
hi! link VimwikiCode        markdownCode
hi! link VimwikiCodeChar    markdownCodeDelimiter

"}}}
" Help {{{
hi! link helpExample         String
hi! link helpHeadline        Title
hi! link helpSectionDelim    Comment
hi! link helpHyperTextEntry  Statement
hi! link helpHyperTextJump   Underlined
hi! link helpURL             Underlined

"}}}
" CtrlP {{{
hi! link CtrlPMatch    String
hi! link CtrlPLinePre  Comment

"}}}
" Mustache {{{
hi mustacheSection           ctermfg=14  cterm=bold
hi mustacheMarker            ctermfg=6
hi mustacheVariable          ctermfg=14
hi mustacheVariableUnescape  ctermfg=1
hi mustachePartial           ctermfg=13

"}}}
" Shell {{{
hi shDerefSimple     ctermfg=3
hi! link shDerefVar  shDerefSimple

hi! LspDiagnosticsError       ctermfg=Red cterm=bold
hi! LspDiagnosticsWarning     ctermfg=Red cterm=bold
hi! LspDiagnosticsInformation ctermfg=Red cterm=bold
hi! LspDiagnosticsHint        ctermfg=Red cterm=bold

"}}}
" Syntastic {{{
hi SyntasticWarningSign       ctermfg=3  ctermbg=NONE
hi SyntasticErrorSign         ctermfg=1  ctermbg=NONE
hi SyntasticStyleWarningSign  ctermfg=2  ctermbg=NONE
hi SyntasticStyleErrorSign    ctermfg=4  ctermbg=NONE
hi NeomakeErrorSign ctermfg=1
hi NeomakeWarningSign ctermfg=1
hi NeomakeMessageSign ctermfg=1
hi NeomakeInfoSig ctermfg=1

"}}}
" Netrw {{{
hi netrwExe       ctermfg=1
hi netrwClassify  ctermfg=5  cterm=bold

"}}}
" Ledger {{{
hi ledgerAccount  ctermfg=3
hi! link ledgerMetadata  Comment
hi! link ledgerTransactionStatus  Statement

"}}}
" Diff {{{
hi diffAdded   ctermfg=0 ctermbg=2
hi diffRemoved ctermfg=0 ctermbg=1
hi! link diffFile  PreProc
hi! link diffLine  Title

"}}}
" Plug {{{
hi plugSha  ctermfg=3

"}}}
" Blade {{{
hi! link bladeStructure  PreProc
hi! link bladeParen      phpParent
hi! link bladeEchoDelim  PreProc

"}}}

" Coc {{{
hi! CocHighlightText cterm=underline
hi! CocErrorFloat ctermfg=0
hi! CocWarningFloat ctermfg=0
hi! CocInfoFloat ctermfg=0
hi! CocErrorSign  ctermfg=Red cterm=bold
hi! CocWarningSign  ctermfg=Brown cterm=bold
hi! CocInfoSign  ctermfg=Yellow cterm=bold
hi! CocHintSign  ctermfg=Blue cterm=bold
" hi! CocSelectedLine ctermbg=Blue

hi CocListBlackBlack     ctermfg=White   ctermbg=White
hi CocListBlackBlue      ctermfg=White   ctermbg=Blue
hi CocListBlackGreen     ctermfg=White   ctermbg=Green
hi CocListBlackGrey      ctermfg=White   ctermbg=Grey
hi CocListBlackWhite     ctermfg=White   ctermbg=White
hi CocListBlackCyan      ctermfg=White   ctermbg=Cyan
hi CocListBlackYellow    ctermfg=White   ctermbg=Yellow
hi CocListBlackMagenta   ctermfg=White   ctermbg=Magenta
hi CocListBlackRed       ctermfg=White   ctermbg=Red
hi CocListFgBlack        ctermfg=White
hi CocListBgBlack        ctermfg=White

hi CocListBlueBlack      ctermfg=Blue    ctermbg=Black
hi CocListBlueBlue       ctermfg=Blue    ctermbg=Blue
hi CocListBlueGreen      ctermfg=Blue    ctermbg=Green
hi CocListBlueGrey       ctermfg=Blue    ctermbg=Grey
hi CocListBlueWhite      ctermfg=Blue    ctermbg=White
hi CocListBlueCyan       ctermfg=Blue    ctermbg=Cyan
hi CocListBlueYellow     ctermfg=Blue    ctermbg=Yellow
hi CocListBlueMagenta    ctermfg=Blue    ctermbg=Magenta
hi CocListBlueRed        ctermfg=Blue    ctermbg=Red
hi CocListFgBlue         ctermfg=Blue
hi CocListBgBlue         ctermfg=Blue

hi CocListGreenBlack     ctermfg=Green   ctermbg=Black
hi CocListGreenBlue      ctermfg=Green   ctermbg=Blue
hi CocListGreenGreen     ctermfg=Green   ctermbg=Green
hi CocListGreenGrey      ctermfg=Green   ctermbg=Grey
hi CocListGreenWhite     ctermfg=Green   ctermbg=White
hi CocListGreenCyan      ctermfg=Green   ctermbg=Cyan
hi CocListGreenYellow    ctermfg=Green   ctermbg=Yellow
hi CocListGreenMagenta   ctermfg=Green   ctermbg=Magenta
hi CocListGreenRed       ctermfg=Green   ctermbg=Red
hi CocListFgGreen        ctermfg=Green
hi CocListBgGreen        ctermbg=Green

hi CocListGreyBlack      ctermfg=Grey    ctermbg=Black
hi CocListGreyBlue       ctermfg=Grey    ctermbg=Blue
hi CocListGreyGreen      ctermfg=Grey    ctermbg=Green
hi CocListGreyGrey       ctermfg=Grey    ctermbg=Grey
hi CocListGreyWhite      ctermfg=Grey    ctermbg=White
hi CocListGreyCyan       ctermfg=Grey    ctermbg=Cyan
hi CocListGreyYellow     ctermfg=Grey    ctermbg=Yellow
hi CocListGreyMagenta    ctermfg=Grey    ctermbg=Magenta
hi CocListGreyRed        ctermfg=Grey    ctermbg=Red
hi CocListFgGrey         ctermfg=Grey
hi CocListBgGrey         ctermbg=Grey

hi CocListWhiteBlack     ctermfg=White   ctermbg=Black
hi CocListWhiteBlue      ctermfg=White   ctermbg=Blue
hi CocListWhiteGreen     ctermfg=White   ctermbg=Green
hi CocListWhiteGrey      ctermfg=White   ctermbg=Grey
hi CocListWhiteWhite     ctermfg=White   ctermbg=White
hi CocListWhiteCyan      ctermfg=White   ctermbg=Cyan
hi CocListWhiteYellow    ctermfg=White   ctermbg=Yellow
hi CocListWhiteMagenta   ctermfg=White   ctermbg=Magenta
hi CocListWhiteRed       ctermfg=White   ctermbg=Red
hi CocListFgWhite        ctermfg=White
hi CocListBgWhite        ctermbg=White

hi CocListCyanBlack      ctermfg=Cyan    ctermbg=Black
hi CocListCyanBlue       ctermfg=Cyan    ctermbg=Blue
hi CocListCyanGreen      ctermfg=Cyan    ctermbg=Green
hi CocListCyanGrey       ctermfg=Cyan    ctermbg=Grey
hi CocListCyanWhite      ctermfg=Cyan    ctermbg=White
hi CocListCyanCyan       ctermfg=Cyan    ctermbg=Cyan
hi CocListCyanYellow     ctermfg=Cyan    ctermbg=Yellow
hi CocListCyanMagenta    ctermfg=Cyan    ctermbg=Magenta
hi CocListCyanRed        ctermfg=Cyan    ctermbg=Red
hi CocListFgCyan         ctermfg=Cyan
hi CocListBgCyan         ctermbg=Cyan

hi CocListYellowBlack    ctermfg=Yellow  ctermbg=Black
hi CocListYellowBlue     ctermfg=Yellow  ctermbg=Blue
hi CocListYellowGreen    ctermfg=Yellow  ctermbg=Green
hi CocListYellowGrey     ctermfg=Yellow  ctermbg=Grey
hi CocListYellowWhite    ctermfg=Yellow  ctermbg=White
hi CocListYellowCyan     ctermfg=Yellow  ctermbg=Cyan
hi CocListYellowYellow   ctermfg=Yellow  ctermbg=Yellow
hi CocListYellowMagenta  ctermfg=Yellow  ctermbg=Magenta
hi CocListYellowRed      ctermfg=Yellow  ctermbg=Red
hi CocListFgYellow       ctermfg=Yellow
hi CocListBgYellow       ctermbg=Yellow

hi CocListMagentaBlack   ctermfg=Magenta ctermbg=Black
hi CocListMagentaBlue    ctermfg=Magenta ctermbg=Blue
hi CocListMagentaGreen   ctermfg=Magenta ctermbg=Green
hi CocListMagentaGrey    ctermfg=Magenta ctermbg=Grey
hi CocListMagentaWhit    ctermfg=Magenta ctermbg=White
hi CocListMagentaCyan    ctermfg=Magenta ctermbg=Cyan
hi CocListMagentaYellow  ctermfg=Magenta ctermbg=Yellow
hi CocListMagentaMagenta ctermfg=Magenta ctermbg=Magenta
hi CocListMagentaRed     ctermfg=Magenta ctermbg=Red
hi CocListFgMagenta      ctermfg=Magenta
hi CocListBgMagenta      ctermbg=Magenta

hi CocListRedBlack       ctermfg=Red     ctermbg=Black
hi CocListRedBlue        ctermfg=Red     ctermbg=Blue
hi CocListRedGreen       ctermfg=Red     ctermbg=Green
hi CocListRedGrey        ctermfg=Red     ctermbg=Grey
hi CocListRedWhite       ctermfg=Red     ctermbg=White
hi CocListRedCyan        ctermfg=Red     ctermbg=Cyan
hi CocListRedYellow      ctermfg=Red     ctermbg=Yellow
hi CocListRedMagenta     ctermfg=Red     ctermbg=Magenta
hi CocListRedRed         ctermfg=Red     ctermbg=Red
hi CocListFgRed          ctermfg=Red
hi CocListBgRed          ctermbg=Red

"}}}


" Clap {{{
hi ClapCurrentSelection ctermfg=0 ctermbg=7
hi ClapDisplay ctermfg=0 ctermbg=7
hi ClapDisplay2 ctermfg=3 ctermbg=7
hi link ClapSelected ClapDisplay
hi link ClapSelectedSign ClapDisplay
hi link ClapCurrentSelectionSign ClapDisplay
hi link ClapBuffersNumberBracket ClapDisplay
hi link ClapBuffersNumber ClapDisplay
hi link ClapBuffersFsize ClapDisplay
hi link ClapBuffersFname ClapDisplay
hi link ClapBuffersExtra ClapDisplay
hi link ClapLinNr ClapDisplay2
hi link ClapLinNrColumn ClapDisplay2
hi link ClapColumn ClapDisplay2
hi link ClapFpath ClapDisplay2
hi link ClapFpathTruncated ClapDisplay2
hi link ClapProviderColon ClapDisplay
hi link ClapProviderAbout ClapDisplay
hi link ClapProviderId ClapDisplay

" ClapNClapNoMatchesFound
" ClapNoMatchesFound
" ClapPopupCursor
" ClapSymbol
" ClapDisplayInvisibleEndOfBuffer

" header
hi ClapSearchText ctermfg=7 ctermbg=0
hi ClapInput      ctermfg=7 ctermbg=0
hi ClapSpinner    ctermfg=7 ctermbg=0


hi ClapMatches cterm=bold
hi link ClapNClapNoMatchesFound ErrorMsg
hi ClapPreview ctermbg=8
hi ClapMatches1 ctermfg=0 ctermbg=1
hi ClapMatches2 ctermfg=0 ctermbg=1
hi ClapMatches3 ctermfg=0 ctermbg=1
hi ClapMatches4 ctermfg=0 ctermbg=1
hi ClapMatches5 ctermfg=0 ctermbg=1
hi ClapMatches6 ctermfg=0 ctermbg=1
hi ClapMatches7 ctermfg=0 ctermbg=1
hi ClapMatches8 ctermfg=0 ctermbg=1
"}}}
"
highlight WhichKey          ctermbg=7 ctermfg=0
highlight WhichKeySeperator ctermbg=7 ctermfg=0
highlight WhichKeyGroup     ctermbg=7 ctermfg=0
highlight WhichKeyDesc      ctermbg=7 ctermfg=0
highlight WhichKeyFloating  ctermbg=7 ctermfg=0

hi mkdHeading cterm=bold
hi mkdBlockQuote ctermfg=2
hi htmlItalic cterm=italic

highlight EndOfBuffer ctermbg=0 ctermfg=0

" TSNone         xxx ctermfg=7
" TSPunctDelimiter xxx links to Delimiter
" TSPunctBracket xxx links to Delimiter
" TSPunctSpecial xxx links to Delimiter
" TSConstant     xxx links to Constant
" TSConstBuiltin xxx links to Special
" TSConstMacro   xxx links to Define
" TSString       xxx links to String
" TSStringRegex  xxx links to String
" TSStringEscape xxx links to SpecialChar
" TSCharacter    xxx links to Character
" TSNumber       xxx links to Number
" TSBoolean      xxx links to Boolean
" TSFloat        xxx links to Float
" TSFunction     xxx links to Function
" TSFuncBuiltin  xxx links to Special
" TSFuncMacro    xxx links to Macro
" TSParameter    xxx links to Identifier
" TSParameterReference xxx links to TSParameter
" TSMethod       xxx links to Function
" TSField        xxx links to Identifier
" TSProperty     xxx links to Identifier
" TSConstructor  xxx links to Special
" TSAnnotation   xxx links to PreProc
" TSAttribute    xxx links to PreProc
" TSNamespace    xxx links to Include
" TSConditional  xxx links to Conditional
" TSRepeat       xxx links to Repeat
" TSLabel        xxx links to Label
" TSOperator     xxx links to Operator
" TSKeyword      xxx links to Keyword
" TSKeywordFunction xxx links to Keyword
" TSKeywordOperator xxx links to TSOperator
" TSException    xxx links to Exception
" TSType         xxx links to Type
" TSTypeBuiltin  xxx links to Type
" TSInclude      xxx links to Include
" TSVariableBuiltin xxx links to Special
" TSText         xxx links to TSNone
" TSStrong       xxx cterm=bold gui=bold
" TSEmphasis     xxx cterm=italic gui=italic
" TSUnderline    xxx cterm=underline gui=underline
" TSTitle        xxx links to Title
" TSLiteral      xxx links to String
" TSURI          xxx links to Underlined
" TSTag          xxx links to Label
" TSTagDelimiter xxx links to Delimiter
" TSDefinitionUsage xxx links to Visual
" TSDefinition   xxx links to Search
" TSCurrentScope xxx links to CursorLine


" vim: fdm=marker:sw=2:sts=2:et
