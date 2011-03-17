" Vim color scheme based on http://github.com/jpo/vim-railscasts-theme
"
" Name:        radiant.vim
" Maintainer:  Alex Duller
" License:     MIT

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "radiant"

" Colors
" Orange            #DD4814
" Light Aubergine   #77216F
" Mid Aubergine     #5E2750
" Dark Aubergine    #2C001E
" Warm Grey         #AEA79F
" Cool Grey         #333333
" Green             #A5C160

hi Normal     guifg=#333333 guibg=#FFFFFF
hi Cursor     guibg=#AEA79F
hi CursorLine guibg=#F6F5EF
hi Visual     guibg=#AEA79F guifg=#333333
hi Search     guifg=NONE    guibg=#FEDFC7  gui=NONE
hi Folded     guifg=#F6F3E8 guibg=#444444  gui=NONE
hi Directory  guifg=#A5C160 gui=NONE
hi Error      guifg=#FFFFFF guibg=#990000
hi MatchParen guifg=NONE    guibg=#e4e4e4
hi Title      guifg=#E6E1DC
hi ColorColumn                   guibg=#F6F5EF

hi Comment    guifg=#AEA79F guibg=NONE     gui=italic
hi! link Todo Comment

hi String     guifg=#A5C160
hi! link Number String
hi! link rubyStringDelimiter String

" nil, self, symbols
hi Constant guifg=#DD4814

" def, end, include, load, require, alias, super, yield, lambda, proc
hi Define guifg=#860E73 gui=NONE
hi! link Include Define
hi! link Keyword Define
hi! link Macro Define

" #{foo}, <%= bar %>
hi Delimiter guifg=#AEA79F
hi! link erubyDelimiter Delimiter

" function name (after def)
hi Function guifg=#333333 gui=NONE

"@var, @@var, $var
hi Identifier guifg=#333333 gui=NONE

" #if, #else, #endif

" case, begin, do, for, if, unless, while, until, else
hi Statement guifg=#77216F gui=NONE
hi! link PreProc Statement
hi! link PreCondit Statement

" SomeClassName
hi Type guifg=NONE gui=NONE

" has_many, respond_to, params
hi railsMethod guifg=#DA4938 gui=NONE

hi DiffAdd guifg=#E6E1DC guibg=#144212
hi DiffDelete guifg=#E6E1DC guibg=#660000

hi xmlTag guifg=#77216F
hi! link xmlTagName  xmlTag
hi! link xmlEndTag   xmlTag
hi! link xmlArg      xmlTag
hi! link htmlTag     xmlTag
hi! link htmlTagName xmlTagName
hi! link htmlEndTag  xmlEndTag
hi! link htmlArg     xmlArg

" Popup Menu
" ----------
" normal item in popup
hi Pmenu guifg=#F6F3E8 guibg=#444444 gui=NONE
" selected item in popup
hi PmenuSel guifg=#000000 guibg=#A5C160 gui=NONE
" scrollbar in popup
hi PMenuSbar guibg=#5A647E gui=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb guibg=#AAAAAA gui=NONE

" CSS stuff
hi cssBraces guifg=#AEA79F
hi cssClassName guifg=#AEA79F

" Invisible character colors
highlight NonText    guifg=#333333 guibg=NONE
highlight SpecialKey guifg=#444444 guibg=#AEA79F

hi LineNr          guifg=#AAAAAA guibg=#F6F5EF
