"
" ---- JSX -------
"
syn match		jsxTagName contained +<[^ /!?<>"']\++hs=s+1 contains=xmlNamespace,xmlAttribPunct,@jsxTagHook display
syn match		jsxTagName contained +</[^ /!?<>"']\++hs=s+2 contains=xmlNamespace,xmlAttribPunct,@jsxTagHook display

syn region	jsxTag contained start=+<+ end=+>+ contains=xmlError,xmlAttrib,xmlEqual,xmlString,jsxTagName,jsxChild,jsAll

syn region	jsxEndTag	contained start=+</+ end=+>+ contains=xmlError,jsxTagName

syn region	jsxChild contained start=+{+ end=++ contains=jsBlock,javascriptBlock extend


syn region	jsxRegion
  \ contains=@Spell,@XMLSyntax,jsxRegion,jsxChild,jsBlock,javascriptBlock,jsxTag,jsxEndTag,jsAll
  \ start=+\%(<\|\w\)\@<!<\z([a-zA-Z_][a-zA-Z0-9:\-.]*\>[:,]\@!\)\([^>]*>(\)\@!+
  \ skip=+<!--\_.\{-}-->+
  \ end=+</\z1\_\s\{-}>+
  \ end=+/>+
  \ keepend
  \ extend

syn cluster jsExpression add=jsxRegion
syn cluster javascriptNoReserved add=jsxRegion

hi! link		jsxTag									Tag
hi! link		jsxEndTag								Tag
hi! link		jsxTagName							Type

hi! link		xmlAttrib								Special
hi! link		xmlString								String
hi! link		xmlEqual								Tag

