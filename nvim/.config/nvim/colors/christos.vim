hi clear

if exists("syntax on")
syntax reset
endif

set t_Co=256
let g:colors_name = "christos"

" Define reusable color variables.
let s:bg="#0e2a2e"
let s:fg="#d9c177"

let s:bg2=s:bg
let s:bg3=s:bg
let s:bg4=s:fg

let s:fg2=s:fg
let s:fg3=s:bg
let s:fg4=s:bg

let s:visbg="#1d27e0"
let s:match="#FF8F8F"

let s:keyword="#cffff3"
let s:builtin="#9cffe5"
let s:const= "#45ffce"
let s:comment="#11cc11"
let s:func="#fade8a"
let s:str="#6cd4d4"
let s:type="#9af781"
let s:var="#fade8a"
let s:warning="#00e2ff"
let s:warning2="#ff8800"

exe 'hi Visual guibg='s:visbg
exe 'hi Normal guifg='s:fg' guibg='s:bg
exe 'hi Cursor guifg='s:bg' guibg='s:fg
exe 'hi CursorLine guibg='s:bg2
exe 'hi CursorLineNr guifg='s:str' guibg='s:bg
exe 'hi CursorColumn guibg='s:bg
exe 'hi ColorColumn guibg='s:bg2
exe 'hi LineNr guifg='s:fg2' guibg='s:bg2
exe 'hi VertSplit guifg='s:fg' guibg='s:bg3
exe 'hi MatchParen guifg='s:fg
exe 'hi StatusLine guifg='s:bg' guibg='s:fg' gui=bold'
exe 'hi Pmenu guifg='s:fg' guibg='s:bg
exe 'hi PmenuSel guifg='s:bg' guibg='s:fg
exe 'hi IncSearch guifg='s:bg' guibg='s:keyword
exe 'hi Search gui=underline guibg='s:match
exe 'hi Directory guifg='s:const
exe 'hi Folded guifg='s:fg4' guibg='s:bg
exe 'hi WildMenu guifg='s:str' guibg='s:bg

exe 'hi Boolean guifg='s:const
exe 'hi Character guifg='s:const
exe 'hi Comment guifg='s:comment
exe 'hi Conditional guifg='s:keyword
exe 'hi Constant guifg='s:const
exe 'hi Todo guibg='s:comment
exe 'hi Define guifg='s:keyword
exe 'hi DiffAdd guifg=#fafafa guibg=#123d0f gui=bold'
exe 'hi DiffDelete guibg='s:bg2
exe 'hi DiffChange guibg=#151b3c guifg=#fafafa'
exe 'hi DiffText guifg=#ffffff guibg=#ff0000 gui=bold'
exe 'hi ErrorMsg guifg='s:warning' guibg='s:bg2' gui=bold'
exe 'hi WarningMsg guifg='s:str
exe 'hi Float guifg='s:const
exe 'hi Function guifg='s:func
exe 'hi Identifier guifg='s:type
exe 'hi Keyword guifg='s:keyword
exe 'hi Label guifg='s:var
exe 'hi NonText guifg='s:bg4' guibg='s:bg2
exe 'hi Number guifg='s:const
exe 'hi Operater guifg='s:keyword
exe 'hi PreProc guifg='s:type
exe 'hi Special guifg='s:fg
exe 'hi SpecialKey guifg='s:fg2' guibg='s:bg2
exe 'hi Statement guifg='s:keyword
exe 'hi StorageClass guifg='s:keyword
exe 'hi String guifg='s:str
exe 'hi Structure guifg='s:keyword
exe 'hi Tag guifg='s:keyword
exe 'hi Title guifg='s:fg
exe 'hi Todo guifg='s:fg2' gui=inverse,bold'
exe 'hi Type guifg='s:type' gui=bold'
exe 'hi Underlined gui=underline'
exe 'hi Macro guifg='s:keyword

" Neovim Terminal Mode
let g:terminal_color_0 = s:bg
let g:terminal_color_1 = s:warning
let g:terminal_color_2 = s:keyword
let g:terminal_color_3 = s:bg4
let g:terminal_color_4 = s:func
let g:terminal_color_5 = s:builtin
let g:terminal_color_6 = s:fg3
let g:terminal_color_7 = s:str
let g:terminal_color_8 = s:bg2
let g:terminal_color_9 = s:warning2
let g:terminal_color_10 = s:fg2
let g:terminal_color_11 = s:var
let g:terminal_color_12 = s:type
let g:terminal_color_13 = s:const
let g:terminal_color_14 = s:fg4
let g:terminal_color_15 = s:comment

" HTML Highlighting
exe 'hi htmlLink guifg='s:var' gui=underline'
exe 'hi htmlStatement guifg='s:keyword
exe 'hi htmlSpecialTagName guifg='s:keyword

set cursorline
highlight CursorLine guibg=#444444

" Markdown Highlighting
exe 'hi mkdCode guifg='s:builtin
