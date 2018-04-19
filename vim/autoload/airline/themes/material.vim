
" airline colors "{{{
" ---------------------------------------------------------------------
let g:airline#themes#material#palette = {}

let s:guiGray       = "#546e7a"
let s:guiBlack        = "#263238"
let s:guiLightgray   = "#b0bec5"
let s:guiWhite       = "#ffffff"
let s:guiRed         = "#ff5252"
let s:guiGreen       = "#69f0ae"
let s:guiBlue        = "#40c4ff"
let s:guiYellow      = "#ffd740"

let s:ctermGray     = "8"
let s:ctermBlack      = "0"
let s:ctermLightgray = "7"
let s:ctermWhite     = "15"
let s:ctermRed       = "9"
let s:ctermGreen     = "2"
let s:ctermBlue      = "4"
let s:ctermYellow    = "11"
let s:ctermCyan      = "6"
let s:ctermMagenta   = "13"

" BASICS --------------------------------------------------------------------
let s:modified = { 'airline_c': [ '#64fcda', '', s:ctermYellow, s:ctermGray ] }
"	\ 'airline_error': ['#64fcda', '', s:ctermRed, s:ctermBlack ] }


" MODES SUPPORT
" NORMAL MODE ---------------------------------------------------------------
let s:N1 = [ s:guiWhite     , s:guiGray		, s:ctermBlack			, s:ctermCyan ]
let s:N2 = [ s:guiLightgray , s:guiBlack  , s:ctermBlue				, s:ctermGray ]
let s:N3 = [ s:guiWhite     , s:guiGray		, s:ctermWhite			, s:ctermGray ]
let g:airline#themes#material#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#material#palette.normal_modified = s:modified

" INSERT MODE ---------------------------------------------------------------
let s:I1 = [ s:guiGreen , s:guiGray , s:ctermBlack	, s:ctermRed		]
let s:I2 = [ s:guiGray , s:guiGreen , s:ctermGray		, s:ctermCyan		]
let s:I3 = [ s:guiGreen , s:guiGray , s:ctermWhite	, s:ctermGray		]
let g:airline#themes#material#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#material#palette.insert_modified = s:modified

" VISUAL MODE ---------------------------------------------------------------
let s:V1 = [ s:guiBlue  , s:guiGray , s:ctermBlack	, s:ctermYellow ]
let s:V2 = [ s:guiGray , s:guiBlue  , s:ctermGray		, s:ctermBlue		]
let s:V3 = [ s:guiBlue  , s:guiGray , s:ctermWhite  , s:ctermGray		]
let g:airline#themes#material#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#material#palette.visual_modified = s:modified

" REPLACE MODE --------------------------------------------------------------
let s:R1 = [ s:guiYellow , s:guiGray  , s:ctermYellow , s:ctermGray  ]
let s:R2 = [ s:guiGray  , s:guiYellow , s:ctermGray  , s:ctermYellow ]
let s:R3 = [ s:guiYellow , s:guiGray  , s:ctermYellow , s:ctermGray  ]
let g:airline#themes#material#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#material#palette.replace_modified = s:modified

" INACTIVE MODE -------------------------------------------------------------
let s:IN1 = [ s:guiGray				, s:guiBlack  , s:ctermYellow			, s:ctermBlack  ]
let s:IN2 = [ s:guiLightgray	, s:guiGray		, s:ctermLightgray	, s:ctermYellow ]
let s:IN3 = [ s:guiLightgray	, s:guiGray		, s:ctermGray				, s:ctermBlack	]
let g:airline#themes#material#palette.inactive = airline#themes#generate_color_map(s:IN1, s:IN2, s:IN3)
let g:airline#themes#material#palette.inactive_modified = s:modified


" SPECIFIC PLUGIN SUPPORT
" CtrlP ---------------------------------------------------------------------
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:guiWhite , s:guiBlack , s:ctermWhite , s:ctermBlack	]
let s:CP2 = [ s:guiWhite , s:guiBlack , s:ctermWhite , s:ctermBlack	]
let s:CP3 = [ s:guiWhite , s:guiGray	, s:ctermWhite , s:ctermGray	]

let g:airline#themes#material#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

"}}}
