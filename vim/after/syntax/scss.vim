
syn region	scssComment						start="/\*" end="\*/" contains=scssTodo,@Spell
syn match		scssComment						"//.*"								contained contains=scssTodo,@Spell containedin=cssDefinition,scssDefinition,@comment
syn match		scssStickyCommentChar "^\/\*\zs!"						contained containedin=cssComment

syn region scssDefinition matchgroup=cssBraces start='{' end='}' contains=cssString.*,cssInclude,cssFontDescriptor,scssAtRootStatement,@comment,scssDefinition,scssProperty,scssSelector,scssVariable,scssImport,scssExtend,scssInclude,scssInterpolation,scssFunction,@scssControl,scssWarn,scssError,scssDebug,scssReturn,cssAtRule,cssAtKeyword,cssAtRuleLogical,cssMediaType,cssComment containedin=cssMediaBlock fold

hi! link cssBraces									Tag
hi! link scssImport									Tag
hi! link scssVariableAssignment			Tag

hi! link scssNull										Macro

hi! link scssReturn									Statement

hi! link scssSelectorChar						Tag
hi! link scssAmpersand							Tag

hi! link scssSelectorName						Label
hi! link cssClassNameDot						Label

hi! link scssFunction								SpecialKey
hi! link scssIf											Special

hi! link scssContent								scssFunction
hi! link scssInclude								scssFunction
hi! link scssExtend									scssFunction
hi! link scssMixin									scssFunction

hi! link scssElse										scssIf
hi! link scssForKeyword							scssIf
hi! link scssWhile									scssIf
hi! link scssEachKeyword						scssIf

hi! link scssError									ErrorMsg
hi! link scssDebug									ErrorMsg
hi! link scssWarn										WarningMsg

hi! link scssDefault								Statement

hi! link scssMixinName							Label
hi! link scssMixinParams						Tag

hi! link scssVariable								PreProc
hi! link scssAttribute							Tag

hi! link scssComment								Comment
hi! link scssStickyCommentChar			Comment
