

exe "hi! Black term=NONE ctermfg=0 guifg=Black gui=NONE"
exe "hi! DarkRed term=NONE ctermfg=1 guifg=DarkRed gui=NONE"
exe "hi! DarkGreen term=NONE ctermfg=2 guifg=DarkGreen gui=NONE"	
exe "hi! DarkYellow term=NONE ctermfg=3 guifg=DarkYellow gui=NONE"	
exe "hi! DarkBlue term=NONE ctermfg=4 guifg=DarkBlue gui=NONE"		
exe "hi! DarkMagenta term=NONE ctermfg=5 guifg=DarkMagenta gui=NONE"
exe "hi! DarkCyan term=NONE ctermfg=6 guifg=DarkCyan gui=NONE"
exe "hi! Grey term=NONE ctermfg=7 guifg=Grey gui=NONE"	
exe "hi! DarkGrey term=NONE ctermfg=8 guifg=DarkGrey gui=NONE"
exe "hi! Red term=NONE ctermfg=9 guifg=Red gui=NONE"
exe "hi! Green term=NONE ctermfg=10 guifg=Green gui=NONE"	
exe "hi! Yellow term=NONE ctermfg=11 guifg=Yellow gui=NONE"	
exe "hi! Blue term=NONE ctermfg=12 guifg=Blue gui=NONE"		
exe "hi! Magenta term=NONE ctermfg=13 guifg=Magenta gui=NONE"
exe "hi! Cyan term=NONE ctermfg=14 guifg=Cyan gui=NONE"		
exe "hi! White term=NONE ctermfg=15 guifg=White gui=NONE"	

exe "hi! BlueHighlight ctermfg=45 guifg=#00d7ff"
exe "hi! YellowHighlight ctermfg=228 guifg=#ffff7e"
exe "hi! GreenHighlight ctermfg=114 guifg=#59d900"
exe "hi! Comment ctermfg=242 guifg=#6c6c6c"

exe "hi! RedBackground ctermfg=255 ctermbg=52 guifg=#ffffff guibg=#810313"
exe "hi! YellowBackground ctermfg=0 ctermbg=221 guifg=#ffffff guibg=#eabb61"

" menu settings
exe "hi! WildMenu term=NONE ctermbg=4 ctermfg=7 guibg=DarkBlue guibg=Gray"
exe "hi! PMenu term=NONE ctermbg=4 ctermfg=7 guibg=DarkBlue guibg=Gray"
exe "hi! PmenuSel term=NONE ctermbg=0 ctermfg=7 guibg=Black guibg=Gray"


" Settings that will not change according to the
" terminal color settings
hi! link PreProc						BlueHighlight
hi! link PreCondit					GreenHighlight
hi! link Macro							YellowHighlight

hi! link ErrorMsg						RedBackground
hi! link WarningMsg					YellowBackground
hi! link Todo								WarningMsg
hi! link Debug							YellowBackground 

hi! link ALEError						ErrorMsg
hi! link ALEWarning					WarningMsg
hi! link ALEWarningSign			WarningMsg


" Settings that will vary with terminal colors
hi! link Function						Yellow
hi! link Keyword						Yellow

hi! link Include						DarkYellow
hi! link Operator						DarkYellow
hi! link Repeat							DarkYellow

hi! link Structure					Grey

hi! link Statement					Green

hi! link Type								DarkGreen 
hi! link Identifier					DarkGreen

hi! link Label							Blue

hi! link Number							Red
hi! link Boolean						Red
hi! link String							Red

hi! link Special						DarkBlue
hi! link Character					DarkBlue

hi! link SpecialChar				Cyan
hi! link SpecialKey					Magenta
hi! link NonText						DarkMagenta

hi! link Error							DarkRed
hi! link Exception					DarkRed

hi! link Ignore							Black
" hi! link Comment						DarkGrey
hi! link SpecialComment			DarkCyan

