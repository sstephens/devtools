

syn match javascriptDocParamName contained /\[\?[0-9a-zA-Z_=\.]\+\]\?/ nextgroup=javascriptDocParamType,javascriptDocDesc skipwhite
syn match javascriptDocParamType contained /{.\+}/ nextgroup=javascriptDocDesc skipwhite
syn match javascriptDocNamedParamType contained /{.\+}/ nextgroup=javascriptDocDesc skipwhite

syn match javascriptParens /[()]/

syn region javascriptCodeComment start=/```/hs=s end=/```/he=e containedin=javascriptDocComment,javascriptComment contained
syn region javascriptBoldComment start="`[^`]"rs=s+1 end="\(``\)\@<!`" containedin=javascriptDocComment,javascriptComment

hi def link javascriptCodeComment Comment
hi def link javascriptBoldComment Comment
