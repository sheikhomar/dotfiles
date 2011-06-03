" Based on the Vibrank Ink theme for TextMate

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "sheikhomar"

set t_Co=256

hi Normal ctermbg=236 ctermfg=white
hi CursorLine cterm=none ctermbg=234
hi IncSearch cterm=underline ctermfg=red ctermbg=235
hi LineNr cterm=none ctermbg=234 ctermfg=darkgrey
hi Search cterm=none ctermfg=black ctermbg=220
hi StatusLine ctermbg=237 ctermfg=255
hi StatusLineNC ctermbg=239 ctermfg=245
hi Visual ctermbg=white ctermfg=25

hi Comment ctermfg=darkgrey
hi Constant ctermfg=228 
hi Define ctermfg=202 
hi Function ctermfg=220 
hi Identifier ctermfg=white 
hi Include ctermfg=220 
hi Keyword ctermfg=202 
hi Statement ctermfg=202
hi String ctermfg=76 
hi Type ctermfg=28 cterm=bold 

hi rubyInstanceVariable cterm=none ctermfg=white
hi rubyInterpolation ctermfg=white 
hi rubyPseudoVariable ctermfg=66 
hi rubySymbol ctermfg=68 
hi rubyStringDelimiter ctermfg=70 

hi link javascriptNumber Number
hi link javascriptNull Constant
hi link javaScriptFunction Keyword
hi link javaScriptGlobal Normal
hi link javaScriptMember Normal
hi link javaScriptIdentifier Keyword

hi javaScriptBraces ctermfg=white
hi javaScriptFuncName ctermfg=red
