syntax on
set syntax=custom

set nu rnu
set hlsearch 
set incsearch 
set autoindent
set ignorecase
"set noruler
set ruler
set expandtab
set nowrap 
"set noswapfile 

set scrolloff=0
set sidescrolloff=0

set history=1000
set nospell
set cursorline
set laststatus=2
set shortmess-=5
set foldcolumn=1
set tabstop=4
set shiftwidth=4

"numbers starting with zero are otherwise treated as base 8
set nrformats-=octal

"sort sequence
let g:netrw_sort_sequence = "[\/]$,\~$"

let &fillchars ..= ',stl:_,eob: '
set fcs=fold:\ ,vert:\|

au BufWritePost *.tex !pdflatex % 

au BufRead *.tex set wrap 
au BufRead *.md  set wrap 
au BufRead *.txt set wrap 

au BufRead *.tex set linebreak 
au BufRead *.md  set linebreak 
au BufRead *.txt set linebreak 

"au BufRead *.tex set spell 
"au BufRead *.md  set spell 
"au BufRead *.txt set spell 

"au syntax * set syntax=custom
au Syntax,BufRead,BufNewFile * set filetype=custom

vmap <F1> ymZ:vim /<C-r>"/j *<CR>:cope<CR>
vmap <F2> ymZ:vim /<C-r>"/j **<CR>:cope<CR>
nmap <F3> :term<CR><Up><Up><CR>exit<CR>
nmap <F4> :.w !bash<CR>
nmap <F5> :!clear && go run <C-r>=expand("%:p")<CR><CR>

set termguicolors
"TEXT
"hi normal           ctermfg=0015 ctermbg=none cterm=none guifg=#ffffff guibg=#000000
hi normal           ctermfg=0015 ctermbg=none cterm=none guifg=#ffffff
hi title            ctermfg=none ctermbg=none cterm=bold
hi endofbuffer      ctermfg=0000 ctermbg=none cterm=bold
"hi matchparen       ctermfg=none ctermbg=0238 cterm=none guifg=#ffff5f guibg=#000000
hi matchparen       ctermfg=none ctermbg=none cterm=none guifg=#ffff5f guibg=NONE

"SEARCH
hi search           ctermfg=none ctermbg=0238 cterm=none guibg=#444444
hi cursearch        ctermfg=none ctermbg=0238 cterm=none guifg=#ffff5f guibg=#444444
hi incsearch        ctermfg=none ctermbg=0238 cterm=none guifg=#ffff5f guibg=#444444

"SELECTED
hi visual           ctermfg=none ctermbg=0238 cterm=none guibg=#333333

"TABS
hi tabline          ctermfg=none ctermbg=none cterm=none guibg=NONE guifg=#ffffff
hi tablinefill      ctermfg=none ctermbg=none cterm=none guibg=NONE guifg=#ffffff
hi tablinesel       ctermfg=0227 ctermbg=none cterm=none guibg=NONE guifg=#ffff5f

"WINDOWS
hi vertsplit        ctermfg=none ctermbg=none cterm=none
hi statuslinenc     ctermfg=none ctermbg=none cterm=underline
hi statuslinetermnc ctermfg=none ctermbg=none cterm=underline
hi statusline       ctermfg=0227 ctermbg=none cterm=bold,underline guifg=#ffff5f
hi statuslineterm   ctermfg=0227 ctermbg=none cterm=bold,underline guifg=#ffff5f

"CURSOR LINE
hi cursorline       ctermfg=none ctermbg=none cterm=none guibg=NONE
hi cursorlinenr     ctermfg=0227 ctermbg=none cterm=bold guifg=#ffff5f
hi linenr           ctermfg=0240 ctermbg=none cterm=none guifg=#888888

"SPELLING 
hi spellbad         ctermfg=0160 ctermbg=none cterm=underline

"FOLDS
hi folded           ctermfg=0015 ctermbg=none cterm=bold guifg=#ffffff guibg=NONE
hi foldcolumn       ctermfg=0015 ctermbg=none cterm=bold guifg=#ffffff guibg=NONE

"COLORS
""Deep blues color theme
"hi opr              ctermfg=0085 ctermbg=none cterm=none guifg=#5a5aff
"hi com              ctermfg=0118 ctermbg=none cterm=none guifg=#247ba0
"hi tag              ctermfg=0015 ctermbg=none cterm=bold guifg=#ff0000
"hi title            ctermfg=0118 ctermbg=none cterm=bold guifg=#b4e7ce

"Topical
hi opr              ctermfg=0085 ctermbg=none cterm=none guifg=#ef476f
hi com              ctermfg=0118 ctermbg=none cterm=none guifg=#ffd166
hi tag              ctermfg=0015 ctermbg=none cterm=bold guifg=#118ab2
hi title            ctermfg=0118 ctermbg=none cterm=bold guifg=#06d6a0


set path+=**
set wildmenu

function! MyFoldText()
    let nl = v:foldend - v:foldstart + 1
    let line = getline(v:foldstart)
    return line
endfunction

set foldtext=MyFoldText()
set matchpairs={:}
