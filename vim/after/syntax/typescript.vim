
syntax keyword typescriptObjectStaticMethod contained assign nextgroup=typescriptFuncCallArg
syntax keyword typescriptArrayMethod contained length nextgroup=typescriptFuncCallArg

hi! link typescriptReserved									Label
hi! link typescriptGlobal										Structure
hi! link typescriptGlobalMethod							Structure
hi! link typescriptDebugger									Debug
hi! link typescriptNull											Macro
hi! link typescriptVariable									Include
hi! link typescriptIdentifier								PreCondit
hi! link typescriptEndColons								Normal
hi! link typescriptLabel										Normal
hi! link typescriptOperator									Identifier

hi! link typescriptImport										Operator
hi! link typescriptExport										Operator
hi! link typescriptModule										Operator
hi! link typescriptAmbientDeclaration       Operator
hi! link typescriptForOperator							Operator
hi! link typescriptKeywordOp								Operator
hi! link typescriptConditional							Operator 
hi! link typescriptRepeat										Operator 
hi! link typescriptCase											Operator 
hi! link typescriptCastKeyword							Operator
hi! link typescriptArrowFunc								Operator
hi! link typescriptParens										Tag
hi! link typescriptBraces										Tag
hi! link typescriptBinaryOp									Operator
hi! link typescriptAssign										Operator
hi! link typescriptTernaryOp								Operator
hi! link typescriptExceptions								Operator
hi! link typescriptTry											Operator 

hi! link typescriptPrototype								Label
hi! link typescriptDefault									Label
hi! link typescriptAccessibilityModifier		PreProc

" get | set accessors
hi! link typescriptClassName								Normal
hi! link typescriptMember										Normal
hi! link typescriptFuncName									Normal
hi! link typescriptParenExp									Normal 

hi! link typescriptMethodAccessor						Statement
hi! link typescriptClassStatic							Statement
hi! link typescriptStatementKeyword					Statement

hi! link typescriptES6MapProp								SpecialChar
hi! link typescriptRegExpProp								SpecialChar
hi! link typescriptES6SetProp								SpecialChar
hi! link typescriptDOMDocProp								SpecialChar
hi! link typescriptProxyAPI									SpecialChar
hi! link typescriptDOMEventProp							SpecialChar
hi! link typescriptDOMNodeProp							SpecialChar
hi! link typescriptDOMStorageProp						SpecialChar
hi! link typescriptDOMElemAttrs							SpecialChar
hi! link typescriptMathStaticProp						SpecialChar
hi! link typescriptNumberStaticProp					SpecialChar
hi! link typescriptRegExpStaticProp					SpecialChar
hi! link typescriptSymbolStaticProp					SpecialChar
hi! link typescriptXHRProp									SpecialChar
hi! link typescriptRequestProp							SpecialChar
hi! link typescriptResponseProp							SpecialChar
hi! link typescriptBOMWindowProp						SpecialChar
hi! link typescriptCryptoProp								SpecialChar
hi! link typescriptFileReaderProp						SpecialChar
hi! link typescriptURLUtilsProp							SpecialChar

hi! link typescriptObjectMethod							Macro
hi! link typescriptDOMStorageMethod					Macro
hi! link typescriptArrayMethod							Macro
hi! link typescriptDateMethod								Macro 
hi! link typescriptES6MapMethod							Macro
hi! link typescriptNumberMethod							Macro
hi! link typescriptPromiseMethod						Macro
hi! link typescriptReflectMethod						Macro 
hi! link typescriptRegExpMethod							Macro 
hi! link typescriptES6SetMethod							Macro 
hi! link typescriptStringMethod							Macro 
hi! link typescriptDOMDocMethod							Macro
hi! link typescriptDOMEventMethod						Macro
hi! link typescriptDOMEventTargetMethod			Macro
hi! link typescriptDOMNodeMethod						Macro
hi! link typescriptDOMStorageMethod					Macro
hi! link typescriptDOMElemFuncs							Macro
hi! link typescriptObjectStaticMethod				Macro
hi! link typescriptJSONStaticMethod					Macro
hi! link typescriptArrayStaticMethod				Macro
hi! link typescriptDateStaticMethod					Macro
hi! link typescriptMathStaticMethod					Macro
hi! link typescriptNumberStaticMethod				Macro 
hi! link typescriptPromiseStaticMethod			Macro
hi! link typescriptStringStaticMethod				Macro 
hi! link typescriptSymbolStaticMethod				Macro
hi! link typescriptConsoleMethod						Macro
hi! link typescriptXHRMethod								Macro
hi! link typescriptHeadersMethod						Macro
hi! link typescriptRequestMethod						Macro
hi! link typescriptResponseMethod						Macro
hi! link typescriptBOMWindowMethod					Macro
hi! link typescriptBOMWindowEvent						Macro
hi! link typescriptCryptoMethod							Macro
hi! link typescriptSubtleCryptoMethod 			Macro
hi! link typescriptFileMethod								Macro
hi! link typescriptFileReaderMethod					Macro
hi! link typescriptFileListMethod						Macro
hi! link typescriptBlobMethod								Macro
hi! link typescriptURLStaticMethod					Macro
hi! link typescriptGeolocationMethod				Macro


hi! link typescriptAbstract									Function 
hi! link typescriptClassKeyword							Function 
hi! link typescriptFuncKeyword							Function
hi! link typescriptAliasKeyword							Function
hi! link typescriptInterfaceKeyword					Function 
hi! link typescriptEnumKeyword							Function 

" " " ts func params
hi! link typescriptCall											PreProc

" " " ts types
hi! link typescriptFuncTypeArrow						Type
hi! link typescriptStringLiteralType				Type
hi! link typescriptTypeReference						Type
hi! link typescriptPredefinedType						Type
hi! link typescriptObjectType								Type
hi! link typescriptTupleType								Type
hi! link typescriptTypeParameter						Type
hi! link typescriptTypeParameters						Type
hi! link typescriptTypeArguments						Type
hi! link typescriptClassTypeArguments				Type
hi! link typescriptTypeBracket							Type
hi! link typescriptProperty									Type

hi! link typescriptTypeAnnotation						PreProc
hi! link typescriptOptionalMark							PreProc
hi! link typescriptObjectColon							PreProc

hi! link typescriptTypeBrackets							Operator
hi! link typescriptUnion										Operator

hi! link typescriptObjectSpread							Macro
hi! link typescriptMappedIn									Macro 
hi! link typescriptTypeQuery								Macro
hi! link typescriptConstructorType					Macro
hi! link typescriptUserDefinedType					Macro 
hi! link typescriptConstraint								Macro
hi! link typescriptBranch										Macro

hi! link typescriptAliasDeclaration					Normal
hi! link typescriptInterfaceName						Normal

hi! link typescriptDocNotation							PreProc
hi! link typescriptDocTags									PreProc
hi! link typescriptDocName									Macro
hi! link typescriptDocNamedParamType				PreCondit
hi! link typescriptDocParamName							Macro
hi! link typescriptDocParamType							PreCondit
hi! link typescriptDocParam									Cyan
hi! link typescriptRef											SpecialComment 

hi! link typescriptFuncImpl									Magenta
hi! link typescriptParamImpl								Magenta
hi! link typescriptFuncCall									Magenta
hi! link typescriptIndexSignature						Magenta
hi! link typescriptTypeOperator							Magenta
hi! link typescriptFunctionMethod						Magenta
hi! link typescriptCallImpl									Magenta

