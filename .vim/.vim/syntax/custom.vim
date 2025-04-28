"Golang
syn keyword typ    chan map bool string error int int8 int16 int32 int64 rune byte uint uint8 uint16 uint32 uint64 uintptr float32 float64 complex64 complex128  
"Haskell
syn keyword typ    Int Bool String Integer

"syn match   opr    "[\"\+\*\|\-\$&!=:;{},.<>]"
"syn match   opr    "\\\w*" contains=@NoSpell
syn match    opr    "\W"
syn match    opr    "\\\w*"

syn region  com    start="^//" end="$"
syn region  com    start="/\*" end="\*/"
syn region  com    start="\s//" end="$"
syn region  com    start="^--" end="$"
syn match   com    "^\"[^\"]*$"
"syn region  com    start="^#" end="$"
syn region  com    start="# " end="$"
syn region  com    start="^%" end="$"

syn region  fold    start="{" end="}" fold

"syn match    RED    "!R"
"syn match    WHITE  "!W"
"syn match    BLACK  "!B"


