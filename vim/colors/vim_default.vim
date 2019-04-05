

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
exe "hi! YellowHighlight ctermfg=228 guifg=#ffff87"
exe "hi! RedHighlight ctermfg=167 guifg=#d75f5e"
exe "hi! GreenHighlight ctermfg=47 guifg=#01ff5f"
exe "hi! CyanHighlight ctermfg=87 guifg=#5fffff"

exe "hi! RedBackground ctermfg=256 ctermbg=52 guifg=#ffffff guibg=#5f0000"
exe "hi! LightRedBackground ctermfg=256 ctermbg=124 guifg=#ffffff guibg=#af0000"
exe "hi! YellowBackground ctermfg=0 ctermbg=221 guifg=#000000 guibg=#ffd75f"
exe "hi! BlueBackground ctermfg=252 ctermbg=27 guifg=#d0d0d0 guibg=#005fff"
exe "hi! PurpleBackground ctermfg=252 ctermbg=54 guifg=#d0d0d0 guibg=#5f0087"

exe "hi! DimBlue ctermfg=80 ctermbg=25 guifg=#5fd7d7 guibg=#005faf"
exe "hi! DimBlueYellow ctermfg=220 ctermbg=25 guifg=#ffd600 guibg=#005faf"

" menu settings
exe "hi! WildMenu term=NONE ctermbg=4 ctermfg=7 guibg=DarkBlue guibg=Gray"
exe "hi! PMenu term=NONE ctermbg=4 ctermfg=7 guibg=DarkBlue guibg=Gray"
exe "hi! PmenuSel term=NONE ctermbg=0 ctermfg=7 guibg=Black guibg=Gray"


"exe \"hi! FoldColumn term=NONE ctermbg=247 ctermfg=233 guibg=#cccccc guifg=#6c6c6c"
exe "hi! Folded term=NONE ctermbg=247 ctermfg=233 guibg=#9e9e9e guifg=#121212"

exe "hi! Comment ctermfg=242 guifg=#6c6c6c"
exe "hi! Tag ctermfg=143 guifg=#afaf5f"
exe "hi! Cursor term=NONE ctermbg=254 ctermfg=232 guibg=#dddddd guifg=#080808"					

" Settings that will not change according to the
" terminal color settings
hi! link lCursor						Cursor
hi! link CursorLine					DimBlue
hi! link CtrlPMatch					YellowHighlight
hi! link VertSplit					DimBlue
hi! link MatchParen					DimBlueYellow
hi! link vimMapModKey				YellowHighlight

"hi! link Visual							BlueHighlight

hi! link PreProc						BlueHighlight
hi! link PreCondit					GreenHighlight
hi! link Macro							YellowHighlight
hi! link SpecialChar				CyanHighlight

hi! link ErrorMsg						LightRedBackground
hi! link WarningMsg					YellowBackground
hi! link Todo								WarningMsg
hi! link Debug							YellowBackground 

hi! link ALEInfo						BlueBackground
hi! link ALEInfoSign				BlueBackground
hi! link ALEError						ErrorMsg
hi! link ALEErrorSign				LightRedBackground
hi! link ALEErrorLine				RedBackground
hi! link ALEStyleError			PurpleBackground
hi! link ALEWarning					WarningMsg
hi! link ALEWarningSign			WarningMsg

hi! link DiffAdd						DimBlueYellow
hi! link DiffChange					DimBlue
hi! link DiffText						DimBlueYellow
hi! link DiffDelete					RedHighlight


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

hi! link Number							RedHighlight
hi! link Boolean						RedHighlight
hi! link String							RedHighlight

hi! link Special						DarkBlue
hi! link Character					DarkBlue

hi! link SpecialKey					Cyan
hi! link NonText						DarkCyan

hi! link Error							DarkRed
hi! link Exception					DarkRed

hi! link Ignore							Black
hi! link SpecialComment			DarkMagenta

