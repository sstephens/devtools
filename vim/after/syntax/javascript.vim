
" operators
syn match   jsOperatorSign					"[-!|&+<>=%/*~^]" skipwhite skipempty nextgroup=@jsExpression

" JSDoc
syn case ignore

syn region  jsComment								start=+/\*\*+  end=+\*/+ contains=jsDocNotation,jsCodeComment,jsBoldComment,jsCommentTodo,@Spell fold extend keepend
syn region  jsLineComment           start="//" end="\n" contains=@Spell,jsCommentTodo


syn match   jsDocNotation           contained /\W@/ nextgroup=jsDocTags

syn keyword jsDocTags               contained constant constructor constructs function ignore inner private public readonly static
syn keyword jsDocTags               contained const dict expose inheritDoc interface nosideeffects override protected struct
syn keyword jsDocTags               contained example global

syn keyword jsDocTags               contained ngdoc scope priority animations
syn keyword jsDocTags               contained ngdoc restrict methodOf propertyOf eventOf eventType nextgroup=jsDocParam skipwhite

syn keyword jsDocTags               contained abstract virtual access augments

syn keyword jsDocTags               contained arguments callback lends memberOf name type kind link mixes mixin tutorial nextgroup=jsDocParam skipwhite
syn keyword jsDocTags               contained variation nextgroup=jsDocNumParam skipwhite

syn keyword jsDocTags               contained author class classdesc copyright default defaultvalue nextgroup=jsDocDesc skipwhite
syn keyword jsDocTags               contained deprecated description desc external host nextgroup=jsDocDesc skipwhite
syn keyword jsDocTags               contained file fileOverview overview namespace requires since version nextgroup=jsDocDesc skipwhite
syn keyword jsDocTags               contained summary todo license preserve nextgroup=jsDocDesc skipwhite

syn keyword jsDocTags               contained borrows exports nextgroup=jsDocA skipwhite
syn keyword jsDocTags               contained param arg argument property prop module submodule nextgroup=jsDocNamedParamType,jsDocParamName skipwhite
syn keyword jsDocTags               contained type nextgroup=jsDocParamType skipwhite
syn keyword jsDocTags               contained define enum extends implements this typedef nextgroup=jsDocParamType skipwhite
syn keyword jsDocTags               contained return returns throws exception extends nextgroup=jsDocParamType,jsDocParamName skipwhite
syn keyword jsDocTags               contained see nextgroup=jsDocRef skipwhite

" plugins
syn keyword jsDocTags               contained category inheritparams nextgroup=jsDocParam skipwhite
syn keyword jsDocTags               contained toparam nextgroup=jsDocNamedParamType,jsDocParamName skipwhite

" syntax for event firing
syn keyword jsDocTags               contained emits fires nextgroup=jsDocEventRef skipwhite

" ESDoc
syn keyword jsDocTags               contained experimental nextgroup=jsDocDesc skipwhite
syn keyword jsDocTags               contained listens nextgroup=jsDocNamedParamType skipwhite
syn keyword jsDocTags               contained test nextgroup=jsDocParamType skipwhite

syn keyword jsDocTags               contained function func method class nextgroup=jsDocName skipwhite
syn match   jsDocName               contained /\h\w*/
syn match   jsDocParam              contained /\%(#\|\w\|\.\|:\|\/\|-\)\+/
syn match		jsDocParamName					contained /\[\?[0-9a-zA-Z_=\.]\+\]\?/ nextgroup=jsDocParamType,jsDocDesc skipwhite
syn match		jsDocParamType					contained /{.\+}/ nextgroup=jsDocDesc skipwhite
syn match		jsDocNamedParamType			contained /{.\+}/ nextgroup=jsDocDesc skipwhite

syn region	jsCodeComment						contained start=/```/hs=s				end=/```/he=e
syn region	jsBoldComment						contained start="`[^`]"rs=s+1		end="\(``\)\@<!`"

syn cluster jsDocs                  contains=javascriptDocParamType,javascriptDocNamedParamType,javascriptDocParam

" N_BLK		Ignore
" B_BLK
" N_RED
" B_RED		Error (background) 
" N_GRN
" B_GRN
" N_YEL				
" B_YEL		Statement, Exception, Keyword, Label, Repeat, Operator, Todo (background), Search (background)
" N_BLU
" B_BLU		NonText
" N_MAG
" B_MAG		Boolean, Number, String, Constant, Character
" N_CYN 
" B_CYN		Function, Comment, Identifier
" N_WHT
" B_WHT 

" CONSTANT COLORS
" ---------------
" BLUE:				PreProc, Include, Define, Macro, SpecialKey,
"							PreCondit
" CYAN:				Directory
" GREEN:			Type, Structure, Question, StorageClass
" WHITE/RED:	Special, SpecialChar, SpecialComment, Delimiter, Tag, Debug,
"							WarningMsg
" FOREGROUND: Normal, Noise
" GREY:				Visual (background), Conceal (background)
" PINK:				Title


" links
"
" hi! link		jsOperatorSign					Operator

hi! link		jsGlobalObjects					Structure
hi! link		jsGlobalNodeObjects			Structure
hi! link		jsExceptions						Structure
hi! link		jsOperatorKeyword				Statement
hi! link		jsBuiltins							Structure

hi! link		jsImport								Tag
hi! link		jsExport								jsImport 
hi! link		jsFrom									jsImport

hi! link		jsThis									PreCondit
hi! link		jsSuper									jsThis
hi! link		jsExportDefault					Label

hi! link		jsException							Operator
hi! link		jsTry										Tag
hi! link		jsCatch									Tag
hi! link		jsFinally								Operator
hi! link		jsStorageClass					Operator
hi! link		jsConditional						Tag

hi! link		jsSpreadOperator				Macro
hi! link		jsRestOperator					Macro

hi! link		jsFunction							Function
hi! link		jsFuncName							Normal
hi! link		jsFuncCall							Normal
hi! link		jsFuncArgs							PreProc

hi! link		jsFuncBraces						jsBraces
hi! link		jsIfElseBraces					jsBraces 
hi! link		jsClassBraces						jsBraces
hi! link		jsTryCatchBraces				jsBraces 
hi! link		jsModuleBraces					jsBraces 
hi! link		jsObjectBraces					jsBraces 
hi! link		jsObjectSeparator				jsBraces 
hi! link		jsFinallyBraces					jsBraces 
hi! link		jsRepeatBraces					jsBraces
hi! link		jsSwitchBraces					jsBraces
hi! link		jsDestructuringBraces		jsBraces

hi! link		jsBraces								Tag
hi! link		jsBracket								Tag
hi! link		jsBrackets							Tag
hi! link		jsArrowFunction					Operator

hi! link		jsParens								Tag
hi! link		jsFuncParens						Tag

hi! link		jsClassNoise						Noise

hi! link		jsComment								Comment
hi def link jsDocs									jsComment
hi def link jsLineComment						jsComment
hi def link jsDocNotation						PreProc
hi def link jsDocTags								PreProc
hi def link jsDocParam							PreCondit
hi def link jsDocNamedParamType			PreCondit
hi def link jsDocParamName					Macro
hi def link jsDocParamType					PreCondit
hi def link jsCodeComment						jsComment
hi def link jsBoldComment						jsComment


"
" ---- JSX -------
"
hi! link		xmlString								String
hi! link		xmlTagName							Macro
hi! link		xmlTag									Tag
hi! link		xmlEndTag								Tag
hi! link		xmlAttrib								Label

hi! link		jsxChild								Magenta
hi! link		jsxRegion								Operator
