" Based on the Vibrank Ink theme for TextMate

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "sheikhomar"

if !has('gui_running')
  set t_Co=256
endif

hi Normal ctermbg=236 ctermfg=white guibg=#303030 guifg=#ffffff
hi CursorLine cterm=none ctermbg=234 gui=none guibg=#1c1c1c
hi IncSearch cterm=underline ctermfg=red ctermbg=235 gui=underline guifg=red guibg=green
hi LineNr cterm=none ctermbg=234 ctermfg=darkgrey guibg=#1c1c1c guifg=#6c6c6c
hi Search cterm=none ctermfg=black ctermbg=220 gui=none guifg=#000000
hi StatusLine ctermbg=237 ctermfg=255 guibg=#3a3a3a guifg=#eeeeee
hi StatusLineNC ctermbg=239 ctermfg=245 guibg=#4e4e4e guifg=#8a8a8a
hi Visual ctermbg=white ctermfg=25

hi Comment ctermfg=darkgrey guifg=#6c6c6c
hi Constant ctermfg=228 guifg=#ffffaf
hi Define ctermfg=202 guifg=#ff5f00
hi Function ctermfg=220 guifg=#ffd700
hi Identifier ctermfg=white guifg=#ffffff
hi Include ctermfg=220 guifg=#ffd700
hi Keyword ctermfg=202 guifg=#ff5f00
hi Statement ctermfg=202 guifg=#ff5f00
hi String ctermfg=76 guifg=#5fd700
hi Type ctermfg=28 cterm=bold guifg=#008700 gui=bold

hi rubyInstanceVariable cterm=none ctermfg=white gui=none guifg=#ffffff
hi rubyInterpolation ctermfg=white guifg=#ffffff
hi rubyPseudoVariable ctermfg=66 guifg=#5f87af
hi rubySymbol ctermfg=68 guifg=#5f87ff
hi rubyStringDelimiter ctermfg=70

hi javaScriptBraces ctermfg=white guifg=#ffffff

hi link javascriptNumber Number
hi link javascriptNull Constant
hi link javaScriptFunction Keyword
hi link javaScriptGlobal Normal
hi link javaScriptMember Normal
hi link javaScriptIdentifier Keyword
