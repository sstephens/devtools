
syn match cssVendor contained "-\(webkit\|moz\|o\|ms\)-[a-zA-Z-]\+" containedin=cssDefinition

syn keyword cssFontAttr		contained proxima proximathin proximabold


hi! link cssColor						String
hi! link cssFontAttr				String

hi! link cssProp						Identifier
hi! link cssVendor					Identifier

hi! link cssBraces					Tag
hi! link cssSelectorOp			Tag
hi! link cssSelectorOp2			Tag

hi! link cssClassName				Label
hi! link cssClassNameDot		Label

hi! link cssFunctionName		PreCondit
hi! link cssPseudoClassId		PreCondit
hi! link cssPseudoClassFn		PreCondit
hi! link cssPseudoClass			Magenta

hi! link cssIdentifier			Macro

hi! link cssTagName					Include
hi! link cssImportant				Statement

hi! link cssAttr						Tag
hi! link cssCommonAttr			Macro

hi! link cssAtRule					Tag
hi! link cssAtKeyword				Tag
hi! link cssAtRuleLogical		PreProc
hi! link cssMediaType				Macro

