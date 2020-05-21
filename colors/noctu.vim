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
hi CursorLine          ctermfg=0     ctermbg=5     cterm=NONE
hi MatchParen          ctermfg=7     ctermbg=NONE  cterm=underline
hi Pmenu               ctermfg=0     ctermbg=7
hi PmenuThumb          ctermbg=7
hi PmenuSBar           ctermbg=5
hi PmenuSel            ctermfg=0     ctermbg=5
hi ColorColumn         ctermbg=0
hi SpellBad            ctermfg=1     ctermbg=NONE  cterm=underline
hi SpellCap            ctermfg=10    ctermbg=NONE  cterm=underline
hi SpellRare           ctermfg=3     ctermbg=NONE  cterm=underline
hi SpellLocal          ctermfg=13    ctermbg=NONE  cterm=underline
hi NonText             ctermfg=5
hi LineNr              ctermfg=5     ctermbg=NONE
hi CursorLineNr        ctermfg=3     ctermbg=0
hi Visual                            ctermbg=11
hi IncSearch                         ctermbg=11    cterm=bold
hi Search                            ctermbg=11    cterm=none
hi StatusLine          ctermfg=15    ctermbg=0     cterm=bold
hi StatusLineNC        ctermfg=15    ctermbg=0     cterm=bold
hi VertSplit           ctermfg=15    ctermbg=0     cterm=NONE

hi TabLine             ctermfg=0     ctermbg=7    cterm=italic
hi TabLineSel          ctermfg=0     ctermbg=7    cterm=bold,italic
hi TabLineBetween      ctermfg=0     ctermbg=7    cterm=italic
hi TabLineFill         ctermfg=0     ctermbg=7    cterm=inverse

hi Folded              ctermfg=7     ctermbg=0     cterm=none
hi Conceal             ctermfg=6     ctermbg=NONE
hi Directory           ctermfg=7
hi Title               ctermfg=3     cterm=bold
hi ErrorMsg            ctermfg=1     ctermbg=0
hi DiffAdd             ctermfg=2     ctermbg=0
hi DiffChange          ctermfg=3     ctermbg=0
hi DiffDelete          ctermfg=1     ctermbg=0
hi DiffText            ctermfg=0     ctermbg=3     cterm=bold
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

"}}}
" Generic syntax {{{
hi Delimiter       ctermfg=7
hi Comment         ctermfg=15
hi Underlined      ctermfg=4   cterm=underline
hi Type            ctermfg=5   cterm=bold
hi String          ctermfg=13
hi Keyword         ctermfg=7   cterm=bold
hi Todo            ctermfg=15  ctermbg=NONE     cterm=bold,underline
hi link Function   keyword
hi Identifier      ctermfg=7   cterm=NONE
hi Statement       ctermfg=7   cterm=bold
hi Constant        ctermfg=7
hi Number          ctermfg=4
hi Boolean         ctermfg=4
hi Special         ctermfg=7
hi Ignore          ctermfg=0
hi PreProc         ctermfg=5   cterm=bold
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
hi htmlBoldItalic           cterm=bold,underline
hi htmlBoldUnderline        cterm=bold,underline
hi htmlUnderlineItalic      cterm=underline
hi htmlBoldUnderlineItalic  cterm=bold,underline
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
hi! CocErrorFloat ctermfg=0
hi! CocWarningFloat ctermfg=0
hi! CocInfoFloat ctermfg=0
hi! CocErrorSign  ctermfg=Red cterm=bold
hi! CocWarningSign  ctermfg=Brown cterm=bold
hi! CocInfoSign  ctermfg=Yellow cterm=bold
hi! CocHintSign  ctermfg=Blue cterm=bold
"}}}

" Clap {{{
hi! ClapCurrentSelection ctermfg=0 ctermbg=7
hi! ClapDisplay ctermfg=0 ctermbg=7
hi! ClapDisplay2 ctermfg=3 ctermbg=7
hi! link ClapSelected ClapDisplay
hi! link ClapSelectedSign ClapDisplay
hi! link ClapCurrentSelectionSign ClapDisplay
hi! link ClapBuffersNumberBracket ClapDisplay
hi! link ClapBuffersNumber ClapDisplay
hi! link ClapBuffersFsize ClapDisplay
hi! link ClapBuffersFname ClapDisplay
hi! link ClapBuffersExtra ClapDisplay
hi! link ClapLinNr ClapDisplay2
hi! link ClapLinNrColumn ClapDisplay2
hi! link ClapColumn ClapDisplay2
hi! link ClapFpath ClapDisplay2
hi! link ClapFpathTruncated ClapDisplay2
hi! link ClapProviderColon ClapDisplay
hi! link ClapProviderAbout ClapDisplay
hi! link ClapProviderId ClapDisplay

" ClapNClapNoMatchesFound
" ClapNoMatchesFound
" ClapPopupCursor
" ClapSymbol
" ClapDisplayInvisibleEndOfBuffer

" header
hi! ClapSearchText ctermfg=7 ctermbg=0
hi! ClapInput      ctermfg=7 ctermbg=0
hi! ClapSpinner    ctermfg=7 ctermbg=0


hi! ClapMatches cterm=bold
hi! link ClapNClapNoMatchesFound ErrorMsg
hi! ClapPreview ctermbg=8
hi! ClapMatches1 ctermfg=0 ctermbg=1
hi! ClapMatches2 ctermfg=0 ctermbg=1
hi! ClapMatches3 ctermfg=0 ctermbg=1
hi! ClapMatches4 ctermfg=0 ctermbg=1
hi! ClapMatches5 ctermfg=0 ctermbg=1
hi! ClapMatches6 ctermfg=0 ctermbg=1
hi! ClapMatches7 ctermfg=0 ctermbg=1
hi! ClapMatches8 ctermfg=0 ctermbg=1
"}}}

" vim: fdm=marker:sw=2:sts=2:et
