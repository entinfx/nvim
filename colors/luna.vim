" Luna Color Scheme
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

set background=dark
highlight clear

set t_Co=256

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "luna"

" highlight! ColorGroup   term=NONE cterm=NONE ctermfg=NONE ctermbg=NONE

highlight! CursorLine   cterm=NONE              ctermbg=235
highlight! CursorLineNr cterm=NONE ctermfg=254  ctermbg=24
highlight! LineNr       cterm=NONE ctermfg=244
highlight! ColorColumn  cterm=NONE              ctermbg=236

highlight! TabLine      cterm=NONE ctermfg=233  ctermbg=245
highlight! TabLineSel   cterm=NONE ctermfg=233  ctermbg=251
highlight! TabLineFill  cterm=NONE ctermfg=NONE ctermbg=245

highlight User1         cterm=NONE ctermfg=233  ctermbg=249
highlight User2         cterm=NONE ctermfg=233  ctermbg=36
highlight User3         cterm=NONE ctermfg=233  ctermbg=35
highlight User4         cterm=NONE ctermfg=233  ctermbg=212
highlight User5         cterm=NONE ctermfg=233  ctermbg=147

highlight! StatusLine   cterm=NONE ctermfg=253  ctermbg=25
highlight! StatusLineNC cterm=NONE ctermfg=16   ctermbg=245
highlight! WildMenu     cterm=NONE ctermfg=16   ctermbg=255
highlight! VertSplit    cterm=NONE ctermfg=242  ctermbg=242
highlight! WinSeparator cterm=NONE ctermfg=242  ctermbg=242
highlight! Visual       cterm=NONE ctermfg=16   ctermbg=250
highlight! SpecialKey   cterm=NONE ctermfg=245
highlight! NonText      cterm=NONE ctermfg=245

highlight! ModeMsg      cterm=NONE ctermfg=254 ctermbg=29

highlight! Pmenu        cterm=NONE ctermfg=16   ctermbg=250
highlight! PmenuSel     cterm=NONE ctermfg=253  ctermbg=30
highlight! PmenuSbar    cterm=NONE              ctermbg=245
highlight! PmenuThumb   cterm=NONE              ctermbg=240

highlight! Directory    cterm=NONE ctermfg=69
highlight! Normal       cterm=NONE ctermfg=252  ctermbg=234
highlight! Comment      cterm=NONE ctermfg=73
highlight! Constant     cterm=NONE ctermfg=101
highlight! Special      cterm=NONE ctermfg=106
highlight! Identifier   cterm=NONE ctermfg=104
highlight! Statement    cterm=NONE ctermfg=147
highlight! PreProc      cterm=NONE ctermfg=99
highlight! Type         cterm=NONE ctermfg=66
highlight! Search       cterm=NONE ctermfg=16   ctermbg=178
highlight! MatchParen   cterm=NONE ctermfg=16   ctermbg=214
highlight! Tag          cterm=NONE ctermfg=36
highlight! Folded       cterm=NONE ctermfg=134  ctermbg=NONE
highlight! Error        cterm=NONE ctermfg=255  ctermbg=124
highlight! SpellBad     cterm=NONE ctermfg=255  ctermbg=124
highlight! Todo         cterm=NONE ctermfg=253  ctermbg=23
highlight! Underlined   cterm=NONE ctermfg=214
highlight! Ignore       cterm=NONE ctermfg=243

" Custom highlight groups for plugins:
highlight! IblIndent    cterm=NONE ctermfg=236  ctermbg=none
highlight! IblScope     cterm=NONE ctermfg=241  ctermbg=none

highlight! link CurSearch Search
highlight! link MoreMsg Comment
highlight! link ErrorMsg Visual
highlight! link WarningMsg ErrorMsg
highlight! link Question Comment
highlight! link String Constant
highlight! link Character Constant
highlight! link Number Constant
highlight! link Boolean Constant
highlight! link Float Number
highlight! link Function Identifier
highlight! link Conditional Statement
highlight! link Repeat Statement
highlight! link Label Statement
highlight! link Operator Statement
highlight! link Keyword Statement
highlight! link Exception Statement
highlight! link Include PreProc
highlight! link Define PreProc
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

