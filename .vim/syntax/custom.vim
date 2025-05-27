"Groups are matched in order of region -> match -> keyword, and then the bottom group will clobber the top group. The rule is if the bottom group matches, then highlight and jump to the end of the match. Matching starts at the first char. So:
"match group1 CHECK
"match group2 CHECKCHECK
"when applied to CHECKCHECK, group2 wins

"match group1 _CHECK
"match group2 CHECK
"when applied to _CHECK, group1 wins, because despite appearing earlier in the list, _ is evaluated first. 

"match group1 _CHECK @contains group2
"match group2 CHECK 
"AND
"match group2 CHECK 
"match group1 _CHECK @contains group2
"Both behave the same way with check being highlighted by group2


"Golang
syn keyword typ    chan map bool string error int int8 int16 int32 int64 rune byte uint uint8 uint16 uint32 uint64 uintptr float32 float64 complex64 complex128  
"Haskell
syn keyword typ    Int Bool String Integer





"syn match   opr    "[\"\+\*\|\-\$&!=:;{},.<>]"
"syn match   opr    "\\\w*" contains=@NoSpell
syn match    opr    "\W"
syn match    opr    "\\\w*"

syn match tag    "TODO" 
syn match tag    "NOCHECKIN"
syn match tag    " @\w*\|^@\w*"

syn match com "\s\+//.*"       contains=tag
syn match com "^//.*"       contains=tag
syn match com "^\s*# .*"      contains=tag
syn match com "^\s*--.*"      contains=tag
syn match com "^\"[^\"]*$"    contains=tag
syn match com "^%.*"          contains=tag

syn match title "^#\+.*:.*$"


