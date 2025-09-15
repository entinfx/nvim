" Garen Color Scheme
"
" cterm 256-color-compatible. No GUI colors.
"
" @entinfx (github.com/entinfx)
"
"
"
" Terminology
"
" term  - Basic Terminal (supports 'bold', 'underline', 'italic', 'reverse')
" cterm - Color Terminal ('ctermfg' and 'ctermbg' support 0-255 colors,
"         'cterm' supports 'bold', 'underline', 'undercurl', 'reverse',
"         'italic', 'standout' [rarely used], 'strikethrough', 'blink',
"         'nocombine' [rarely used])
" gui   - 24-bit Color Terminal (supports #000000-#ffffff colors)
"
"
"
" Tags testing
"
" TODO FIXME XXX

set background=light
highlight clear

set t_Co=256

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "garden"

" highlight! ColorGroup   term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE

highlight! CursorLine   cterm=NONE              ctermbg=255
highlight! CursorLineNr cterm=NONE ctermfg=255  ctermbg=37
highlight! LineNr       cterm=NONE ctermfg=241  ctermbg=253
highlight! ColorColumn  cterm=NONE              ctermbg=251

highlight! TabLine      cterm=NONE ctermfg=236  ctermbg=247
highlight! TabLineSel   cterm=NONE ctermfg=236  ctermbg=253
highlight! TabLineFill  cterm=NONE ctermfg=NONE ctermbg=247

highlight User1         cterm=NONE ctermfg=236 ctermbg=251
highlight User2         cterm=NONE ctermfg=236 ctermbg=253
highlight User3         cterm=NONE ctermfg=236 ctermbg=35
highlight User4         cterm=NONE ctermfg=236 ctermbg=181
highlight User5         cterm=NONE ctermfg=236 ctermbg=179

highlight! StatusLine   cterm=NONE ctermfg=255 ctermbg=68
highlight! StatusLineNC cterm=NONE ctermfg=235  ctermbg=249
highlight! WildMenu     cterm=NONE ctermfg=16  ctermbg=255
highlight! VertSplit    cterm=NONE ctermfg=249 ctermbg=249
highlight! WinSeparator cterm=NONE ctermfg=249  ctermbg=249
highlight! Visual       cterm=NONE ctermfg=255  ctermbg=249
highlight! SpecialKey   cterm=NONE ctermfg=245
highlight! NonText      cterm=NONE ctermfg=245

highlight! ModeMsg      cterm=NONE ctermfg=255 ctermbg=37

highlight! Pmenu        cterm=NONE ctermfg=236 ctermbg=250
highlight! PmenuSel     cterm=NONE ctermfg=255 ctermbg=68
highlight! PmenuSbar    cterm=NONE             ctermbg=245
highlight! PmenuThumb   cterm=NONE             ctermbg=242

highlight! Directory    cterm=NONE ctermfg=18
highlight! Normal       cterm=NONE ctermfg=237 ctermbg=253
highlight! NormalFloat  cterm=NONE ctermfg=237 ctermbg=250
highlight! Comment      cterm=NONE ctermfg=241
highlight! Constant     cterm=NONE ctermfg=97
highlight! Special      cterm=NONE ctermfg=52
highlight! Identifier   cterm=NONE ctermfg=126
highlight! Statement    cterm=NONE ctermfg=30
highlight! PreProc      cterm=NONE ctermfg=58
highlight! Type         cterm=NONE ctermfg=130
highlight! Search       cterm=NONE ctermfg=236 ctermbg=121
highlight! CurSearch    cterm=NONE ctermfg=236 ctermbg=191
highlight! MatchParen   cterm=NONE ctermfg=233 ctermbg=226
highlight! Tag          cterm=NONE ctermfg=36
highlight! Folded       cterm=NONE ctermfg=134 ctermbg=NONE
highlight! Error        cterm=NONE ctermfg=255 ctermbg=196
highlight! WarningMsg   cterm=NONE ctermfg=255 ctermbg=172
highlight! SpellBad     cterm=NONE ctermfg=255 ctermbg=124
highlight! Todo         cterm=NONE ctermfg=255 ctermbg=135
highlight! Underlined   cterm=NONE ctermfg=126
highlight! Ignore       cterm=NONE ctermfg=243

" Custom highlight groups for plugins:
highlight! IblIndent    cterm=NONE ctermfg=247  ctermbg=NONE
highlight! IblScope     cterm=NONE ctermfg=242  ctermbg=NONE
" highlight! IblWhitespace cterm=NONE ctermfg=NONE  ctermbg=252
highlight! IblWhitespace cterm=NONE ctermfg=NONE  ctermbg=NONE
highlight! LazyButton    cterm=NONE ctermfg=239 ctermbg=253
" highlight! LazyButtonActive cterm=NONE ctermfg=255 ctermbg=68

highlight! link ErrorMsg Error
highlight! link MoreMsg Comment
highlight! link Question Comment
highlight! link String	Constant
highlight! link Character Constant
highlight! link Number	Constant
highlight! link Boolean Constant
highlight! link Float Number
highlight! link Function Identifier
highlight! link Conditional Statement
highlight! link Repeat	Statement
highlight! link Label Statement
highlight! link Operator Statement
highlight! link Keyword Statement
highlight! link Exception Statement
highlight! link Include PreProc
highlight! link Define	PreProc
highlight! link Macro PreProc
highlight! link PreCondit PreProc
highlight! link StorageClass Type
highlight! link Structure Type
highlight! link Typedef Type
highlight! link SpecialChar Special
highlight! link Delimiter Special
highlight! link SpecialComment Special
highlight! link Debug Special
highlight! link Directory Normal
