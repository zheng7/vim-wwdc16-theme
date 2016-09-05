" 'wwdc16.vim' -- Vim color scheme.
" Maintainer:   Lifepillar

hi clear

if exists('syntax_on')
  syntax reset
endif

let colors_name = 'wwdc16'

set background=dark

let s:black       = ["#292c36", 0]
let s:red         = ["#dc3c3c", 1]
let s:forestgreen = ["#64878f", 2]
let s:orange      = ["#d28e5d", 3]
let s:blue        = ["#4670d8", 4]
let s:fusia       = ["#b73999", 5]
let s:bluegreen   = ["#00aba5", 6]
let s:grey3       = ["#999999", 7]
let s:grey1       = ["#333333", 8]
let s:grey2       = ["#666666", 9]
let s:green       = ["#52bd58", 10]
let s:mintgreen   = ["#95c76f", 11]
let s:purple      = ["#8485ce", 13]
let s:white       = ["#ffffff", 15]

let s:none         = ["NONE", "NONE"]

fun! s:HL(group, fg, bg, ...) " ... optional dictionary of attributes
  execute 'hi' a:group  'ctermfg='.a:fg[1] 'ctermbg='.a:bg[1] 'cterm='.(a:0>0?get(a:1,'cterm','NONE'):'NONE')
                      \   'guifg='.a:fg[0]   'guibg='.a:bg[0]   'gui='.(a:0>0?get(a:1,'gui','NONE'):'NONE')
                      \   'guisp='.(a:0>0?get(a:1,'guisp','NONE'):'NONE')
endf

fun! s:HLink(src, tgt)
  execute 'hi! link' a:src a:tgt
endf

if !has('gui_running') && get(g:, "wwdc16_transparent_bg", 0)
  call s:HL("Normal",       s:white,       s:none)
else
  call s:HL("Normal",       s:white,       s:black)
endif

call s:HL("ColorColumn",              s:none,        s:grey1)
call s:HL("Conceal",                  s:forestgreen, s:none)
call s:HL("Cursor",                   s:none,        s:white)
call s:HL("CursorIM",                 s:none,        s:white)
call s:HL("CursorColumn",             s:none,        s:grey1)
call s:HL("CursorLine",               s:none,        s:grey1)
call s:HL("CursorLineNr",             s:white,       s:none)
call s:HL("DiffAdd",                  s:black,       s:mintgreen)
call s:HL("DiffChange",               s:white,       s:orange)
call s:HL("DiffDelete",               s:white,       s:red)
call s:HL("DiffText",                 s:white,       s:green,  {'cterm': 'bold',      'gui': 'bold'})
call s:HL("Directory",                s:mintgreen,   s:none)
call s:HL("EndOfBuffer",              s:grey2,       s:none)
call s:HL("Error",                    s:white,       s:red)
call s:HL("ErrorMsg",                 s:white,       s:red)
call s:HL("FoldColumn",               s:grey2,       s:none)
call s:HL("Folded",                   s:grey2,       s:none)
call s:HL("IncSearch",                s:white,       s:orange)
call s:HL("LineNr",                   s:grey2,       s:none)
call s:HL("MatchParen",               s:white,       s:purple, {'cterm': 'bold',      'gui': 'bold'})
call s:HL("ModeMsg",                  s:white,       s:none)
call s:HL("MoreMsg",                  s:grey2,       s:none)
call s:HL("NonText",                  s:white,       s:none)
call s:HL("Pmenu",                    s:black,       s:forestgreen)
call s:HL("PmenuSbar",                s:grey2,       s:grey1)
call s:HL("PmenuSel",                 s:white,       s:orange)
call s:HL("PmenuThumb",               s:grey2,       s:orange)
call s:HL("Question",                 s:grey3,       s:none)
call s:HL("Search",                   s:white,       s:orange)
call s:HL("SignColumn",               s:grey2,       s:none)
call s:HL("SpecialKey",               s:grey2,       s:none)
call s:HL("SpellBad",                 s:none,        s:none,   {'cterm': 'underline', 'gui': 'undercurl', 'guisp': s:fusia[0]})
call s:HL("SpellCap",                 s:purple,      s:none,   {'cterm': 'underline', 'gui': 'undercurl', 'guisp': s:fusia[0]})
call s:HL("SpellLocal",               s:purple,      s:none,   {'cterm': 'underline', 'gui': 'undercurl', 'guisp': s:fusia[0]})
call s:HL("SpellRare",                s:purple,      s:none,   {'cterm': 'underline', 'gui': 'undercurl', 'guisp': s:fusia[0]})
call s:HL("StatusLine",               s:white,       s:forestgreen)
call s:HL("StatusLineNC",             s:black,       s:forestgreen)
call s:HL("TabLine",                  s:black,       s:forestgreen)
call s:HL("TabLineFill",              s:black,       s:forestgreen)
call s:HL("TabLineSel",               s:white,       s:none)
call s:HL("Title",                    s:orange,      s:none,   {'cterm': 'bold',      'gui': 'bold'})
call s:HL("VertSplit",                s:black,       s:forestgreen)
call s:HL("Visual",                   s:white,       s:blue)
call s:HL("VisualNOS",                s:white,       s:blue)
call s:HL("WarningMsg",               s:red,         s:none)
call s:HL("WildMenu",                 s:white,       s:fusia)

call s:HL("Boolean",                  s:mintgreen,   s:none)
call s:HL("Character",                s:orange,      s:none)
call s:HL("Comment",                  s:grey3,       s:none)
call s:HL("Constant",                 s:orange,      s:none)
call s:HL("Debug",                    s:fusia,       s:none)
call s:HL("Delimiter",                s:white,       s:none)
call s:HL("Float",                    s:mintgreen,   s:none)
call s:HL("Function",                 s:green,       s:none)
call s:HL("Identifier",               s:bluegreen,   s:none)
call s:HL("Ignore",                   s:white,       s:none)
call s:HL("Include",                  s:red,         s:none)
call s:HL("Keyword",                  s:forestgreen, s:none)
call s:HL("Label",                    s:green,       s:none)
call s:HL("Number",                   s:mintgreen,   s:none)
call s:HL("Operator",                 s:bluegreen,   s:none)
call s:HL("PreProc",                  s:red,         s:none)
call s:HL("Special",                  s:red,         s:none)
call s:HL("SpecialChar",              s:fusia,       s:none)
call s:HL("SpecialComment",           s:fusia,       s:none)
call s:HL("Statement",                s:forestgreen, s:none)
call s:HL("StorageClass",             s:bluegreen,   s:none)
call s:HL("String",                   s:mintgreen,   s:none)
call s:HL("Structure",                s:red,         s:none)
call s:HL("Todo",                     s:fusia,       s:none,   {'cterm': 'bold',      'gui': 'bold'})
call s:HL("Type",                     s:purple,      s:none)
call s:HL("Underlined",               s:none,        s:none,   {'cterm': 'underline', 'gui': 'underline'})

" Vim
call s:HL("vimMapModKey",             s:orange,      s:none)
call s:HL("vimMapMod",                s:orange,      s:none)
call s:HL("vimBracket",               s:bluegreen,   s:none)
call s:HL("vimNotation",              s:bluegreen,   s:none)
call s:HLink("vimUserFunc",           "Function")

" Markdown
call s:HL("markdownHeadingDelimiter", s:orange,      s:none)
call s:HL("markdownURL",              s:purple,      s:none)

" JavaScript
call s:HLink("javascriptBraces", "Delimiter")

