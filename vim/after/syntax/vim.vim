
syn keyword vimFuncNameSpecial	contained cal call syn syntax match silent sil containedin=vimIsCommand,vimFuncBodyList
syn keyword vimHiLinkDef				contained link containedin=vimHiGroup

syn match	vimSetEqualModified		contained	"[=:]\|[-+^]=" contains=vimNotation containedin=vimSet nextgroup=vimSetValue

hi! link vimCommand						Operator
hi! link vimCondHL						Delimiter
hi! link vimFuncName					Macro
hi! link vimBracket						Label


hi! link vimMapLhs						PreCondit
hi! link vimMapRhs						Macro
hi! link vimMapMod						Label
hi! link vimMapModKey					Label

hi! link vimOption						Type

hi! link vimCommentTitle			SpecialChar
hi! link vimEnvvar						PreCondit
hi! link vimSetEqualModified	Operator

hi! link vimHighlight					PreProc
hi! link vimHiBang						PreProc


hi! link vimFuncNameSpecial		Label
"hi! link vimHiGroup						PreCondit
hi! link vimHiLinkDef					Macro

