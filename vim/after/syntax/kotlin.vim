
" syntax region  ktBlock    matchgroup=ktBraces start=/{/ end=/}/ 
"   \ contains=ktStatement,ktConditional,ktRepeat,ktOperator,ktKeyword,ktException,ktReservedKeyword,
"   \ fold

" syntax keyword ktFuncKeyword			fun nextgroup=ktFuncName skipwhite skipempty

" syntax match   ktFuncName					contained /\K\k*/ nextgroup=ktFuncImpl skipwhite

" syntax region ktFuncImpl contained start=/fun/ end=/{/me=e-1
"   \ contains=ktFuncKeyword
"   \ nextgroup=ktBlock


hi! link ktStatement									Tag
hi! link ktConditional								Tag
hi! link ktRepeat											Tag
hi! link ktOperator										PreProc
hi! link ktKeyword										Keyword
hi! link ktException									Exception
hi! link ktReservedKeyword						Error

hi! link ktInclude										Tag

hi! link ktType												Type
hi! link ktModifier										Label
hi! link ktStructure									Function
hi! link ktTypedef										PreCondit

hi! link ktBoolean										Boolean
hi! link ktConstant										Constant

hi! link ktTodo												Todo
hi! link ktShebang										Comment
hi! link ktLineComment								Comment
hi! link ktComment										Comment
hi! link ktCommentMatchGroup					Comment
hi! link ktDocComment									Comment
hi! link ktDocTag											Special
hi! link ktDocTagParam								Identifier

hi! link ktSpecialChar								SpecialChar
hi! link ktSpecialCharError						Error
hi! link ktString											String
hi! link ktCharacter									Character

hi! link ktAnnotation									Label
hi! link ktLabel											Label

hi! link ktSimpleInterpolation				Identifier
hi! link ktComplexInterpolationBrace	Identifier

hi! link ktNumber											Number
hi! link ktFloat											Float

hi! link ktExclExcl										Function
hi! link ktArrow											Function
