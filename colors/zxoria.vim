" Vim color file
"
" Name:       zxoria.vim
" Version:    1.7
" Maintainer: Hannes Landstedt <hannes.landstedt@gmail.com>
"
" Forked from xoria256.vim (see below).
"
" ....
" Name:       xoria256.vim
" Version:    1.5
" Maintainer:	Dmitriy Y. Zotikov (xio) <xio@ungrund.org>
"
" Should work in recent 256 color terminals.  88-color terms like urxvt are
" NOT supported.
"
" Don't forget to install 'ncurses-term' and set TERM to xterm-256color or
" similar value.
"
" Color numbers (0-255) see:
" http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
"
" For a specific filetype highlighting rules issue :syntax list when a file of
" that type is opened.

" Initialization {{{
if &t_Co != 256 && ! has("gui_running")
  echomsg ""
  echomsg "err: please use GUI or a 256-color terminal (so that t_Co=256 could be set)"
  echomsg ""
  finish
endif

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "zxoria"
"}}}
" Colours {{{1
"" General {{{2
"" [HL-20140327 2218] It'd be nice if all commands followed the format:
"" name         cterm       ctermfg       ctermbg     gui           guifg           guibg
hi Normal       cterm=none  ctermfg=252   ctermbg=0 gui=none      guifg=#d0d0d0   guibg=#101510
hi ColorColumn  ctermbg=16  guibg=#000000
" [KHL] why can i not set Cursor? is my terminal overriding it? :verbose hi Cursor shows what's expected
hi Cursor       ctermfg=154               ctermbg=154 guibg=#ffaf00
hi CursorColumn             cterm=none    ctermbg=233 guibg=#444444
hi CursorLine               cterm=none    ctermbg=233 guibg=#1a2f1a
"hi Cursor cterm=none ctermbg=2 guibg=#7FFF00
"hi Cursor cterm=none ctermbg=2 guibg=#7FFF00
" [KHL] hi CursorLine                             ctermbg=237 guibg=#3a3a3a cterm=none gui=none
hi CursorLineNr ctermfg=154 ctermbg=0
hi Error        ctermfg=15  guifg=#ffffff ctermbg=1   guibg=#800000
hi ErrorMsg     ctermfg=15  guifg=#ffffff ctermbg=1   guibg=#800000
hi FoldColumn   ctermfg=247 guifg=#9e9e9e ctermbg=233 guibg=#121212
" [KHL] hi Folded       ctermfg=255 guifg=#eeeeee ctermbg=60  guibg=#5f5f87
"hi Folded       ctermfg=none  guifg=#00af87 ctermbg=bg  guibg=bg
hi Folded                   ctermfg=238   ctermbg=bg                guifg=#444444   guibg=bg
hi Search       cterm=none  ctermfg=46     ctermbg=bg
hi IncSearch    cterm=none  ctermfg=0     ctermbg=46
hi LineNr       ctermfg=247 guifg=#9e9e9e ctermbg=0 guibg=#121212
hi MatchParen   ctermfg=188 guifg=#dfdfdf ctermbg=68  guibg=#5f87df cterm=bold gui=bold
" TODO
" hi MoreMsg
" [KHL] hi NonText      ctermfg=247 guifg=#9e9e9e ctermbg=233 guibg=#121212 cterm=bold gui=bold
hi NonText      ctermfg=248 guifg=#a8a8a8 ctermbg=0 guibg=#000000  cterm=bold gui=bold
" [KHL] hi PmenuSel     ctermfg=255 guifg=#eeeeee ctermbg=243 guibg=#767676
hi Pmenu        ctermfg=12   guifg=#dfff5f ctermbg=0 guibg=#1c1c1c
hi PmenuSel     ctermfg=10   guifg=#df875f ctermbg=0 guibg=#1a2f1a
hi PmenuSbar                              ctermbg=252 guibg=#d0d0d0
hi PmenuThumb   ctermfg=243 guifg=#767676
" [KHL] hi Search       ctermfg=0   guifg=#000000 ctermbg=149 guibg=#afdf5f
"hi Search       ctermfg=none guifg=#000000 ctermbg=12 guibg=#afdf5f
"hi Search    ctermfg=0   guifg=#000000 ctermbg=223 guibg=#ffdfaf cterm=none gui=none
" [KHL] hi SignColumn   ctermfg=248 guifg=#a8a8a8
hi SignColumn   ctermfg=248 guifg=#a8a8a8 ctermbg=16 guibg=#000000
hi SpecialKey   ctermfg=77  guifg=#5fdf5f
hi SpellBad     ctermfg=160 guifg=fg      ctermbg=bg                cterm=underline               guisp=#df0000
hi SpellCap     ctermfg=189 guifg=#dfdfff ctermbg=bg  guibg=bg      cterm=underline gui=underline
hi SpellRare    ctermfg=168 guifg=#df5f87 ctermbg=bg  guibg=bg      cterm=underline gui=underline
hi SpellLocal   ctermfg=98  guifg=#875fdf ctermbg=bg  guibg=bg      cterm=underline gui=underline
" [KHL] hi StatusLine   ctermfg=15  guifg=#ffffff ctermbg=239 guibg=#4e4e4e cterm=bold gui=bold
hi StatusLine   ctermfg=154 guifg=#afff00 ctermbg=0 guibg=#080808 cterm=bold gui=bold
" [KHL] hi StatusLineNC ctermfg=249 guifg=#b2b2b2 ctermbg=237 guibg=#3a3a3a cterm=none gui=none
hi StatusLineNC ctermfg=8 guifg=#df5f00 ctermbg=0  guibg=#080808 cterm=none gui=none
hi TabLine      ctermfg=fg  guifg=fg      ctermbg=242 guibg=#666666 cterm=none gui=none
hi TabLineFill  ctermfg=fg  guifg=fg      ctermbg=237 guibg=#3a3a3a cterm=none gui=none
" FIXME
hi Title        ctermfg=225 guifg=#ffdfff
hi Todo         ctermfg=1   ctermbg=bg guifg=#000000 guibg=#dfdf00
hi Underlined   ctermfg=39  guifg=#00afff                           cterm=underline gui=underline
" [KHL] hi VertSplit    ctermfg=237 guifg=#3a3a3a ctermbg=237 guibg=#3a3a3a cterm=none gui=none
hi VertSplit    ctermfg=237 guifg=#3a3a3a ctermbg=bg guibg=bg cterm=none gui=none
" hi VIsualNOS    ctermfg=24  guifg=#005f87 ctermbg=153 guibg=#afdfff cterm=none gui=none
" hi Visual       ctermfg=24  guifg=#005f87 ctermbg=153 guibg=#afdfff
hi Visual       ctermfg=255 guifg=#eeeeee ctermbg=96  guibg=#875f87
" hi Visual       ctermfg=255 guifg=#eeeeee ctermbg=24  guibg=#005f87
hi VisualNOS    ctermfg=255 guifg=#eeeeee ctermbg=60  guibg=#5f5f87
hi WildMenu     ctermfg=0   guifg=#000000 ctermbg=150 guibg=#afdf87 cterm=bold gui=bold

"" Syntax highlighting {{{2
" [KHL] hi Comment      ctermfg=244 guifg=#808080
hi Comment      ctermfg=244 guifg=#5f875f
hi Constant     ctermfg=229 guifg=#ffffaf
hi Identifier   ctermfg=182 guifg=#dfafdf                           cterm=none
hi Ignore       ctermfg=238 guifg=#444444
hi Number       ctermfg=180 guifg=#dfaf87
hi PreProc      ctermfg=150 guifg=#afdf87
hi Special      ctermfg=174 guifg=#df8787
hi Statement    ctermfg=110 guifg=#87afdf                           cterm=none gui=none
hi Type         ctermfg=146 guifg=#afafdf                           cterm=none gui=none

"" Special {{{2
""" .diff {{{3
hi diffAdded    ctermfg=150 guifg=#afdf87
hi diffRemoved  ctermfg=174 guifg=#df8787
""" vimdiff {{{3
hi diffAdd      ctermfg=bg  guifg=bg      ctermbg=151 guibg=#afdfaf
"hi diffDelete   ctermfg=bg  guifg=bg      ctermbg=186 guibg=#dfdf87 cterm=none gui=none
hi diffDelete   ctermfg=bg  guifg=bg      ctermbg=246 guibg=#949494 cterm=none gui=none
hi diffChange   ctermfg=bg  guifg=bg      ctermbg=181 guibg=#dfafaf
hi diffText     ctermfg=bg  guifg=bg      ctermbg=174 guibg=#df8787 cterm=none gui=none
""" HTML {{{3
" hi htmlTag      ctermfg=146  guifg=#afafdf
" hi htmlEndTag   ctermfg=146  guifg=#afafdf
hi htmlTag      ctermfg=244
hi htmlEndTag   ctermfg=244
hi htmlArg	ctermfg=182  guifg=#dfafdf
hi htmlValue	ctermfg=187  guifg=#dfdfaf
hi htmlTitle	ctermfg=254  ctermbg=95
" hi htmlArg	ctermfg=146
" hi htmlTagName	ctermfg=146
" hi htmlString	ctermfg=187
""" django {{{3
hi djangoVarBlock ctermfg=180
hi djangoTagBlock ctermfg=150
hi djangoStatement ctermfg=146
hi djangoFilter ctermfg=174
""" python {{{3
hi pythonExceptions ctermfg=174
""" NERDTree {{{3
hi Directory      ctermfg=110  guifg=#87afdf
hi treeCWD        ctermfg=180  guifg=#dfaf87
hi treeClosable   ctermfg=174  guifg=#df8787
hi treeOpenable   ctermfg=150  guifg=#afdf87
hi treePart       ctermfg=244  guifg=#808080
hi treeDirSlash   ctermfg=244  guifg=#808080
hi treeLink       ctermfg=182  guifg=#dfafdf

""" VimDebug {{{3
" FIXME
" you may want to set SignColumn highlight in your .vimrc
" :help sign
" :help SignColumn

" hi currentLine term=reverse cterm=reverse gui=reverse
" hi breakPoint  term=NONE    cterm=NONE    gui=NONE
" hi empty       term=NONE    cterm=NONE    gui=NONE

" sign define currentLine linehl=currentLine
" sign define breakPoint  linehl=breakPoint  text=>>
" sign define both        linehl=currentLine text=>>
" sign define empty       linehl=empty

