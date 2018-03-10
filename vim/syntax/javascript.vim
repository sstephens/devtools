
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


" links
"
hi def link jsOperatorSign					Type

"hi def link jsObjectFuncName				Function

hi def link jsComment								Comment
hi def link jsDocs									Comment

"hi def link jsDocComment						Comment
hi def link jsLineComment						jsComment

hi def link jsDocNotation						SpecialComment
hi def link jsDocTags								SpecialComment

"hi def link jsDocNGParam						jsDocParam

hi def link jsDocParam							Function

"hi def link jsDocNumParam						Function
"hi def link jsDocEventRef						Function

hi def link jsDocNamedParamType			Type
hi def link jsDocParamName					Type
hi def link jsDocParamType					Type
hi def link jsCodeComment						Comment
hi def link jsBoldComment						Comment


