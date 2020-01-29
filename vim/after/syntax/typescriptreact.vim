
syntax keyword typescriptObjectStaticMethod contained assign nextgroup=typescriptFuncCallArg
syntax keyword typescriptArrayMethod contained length nextgroup=typescriptFuncCallArg
syntax match   typescriptFuncCall	contained /\K\k*(/me=e-1 nextgroup=typescriptFuncCallArg,typescriptCallImpl
syntax match   typescriptDotNotation  /\./ nextgroup=typescriptProp,typescriptFuncCall skipnl

syntax cluster typescriptValue add=typescriptFuncCall,typescriptRestOrSpread
syntax cluster typescriptStatement add=typescriptFuncCall,

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

hi! link typescriptImport										Tag
hi! link typescriptExport										Tag
hi! link typescriptModule										Operator
hi! link typescriptAmbientDeclaration       Operator
hi! link typescriptForOperator							Operator
hi! link typescriptKeywordOp								Operator
hi! link typescriptConditional							Tag
hi! link typescriptRepeat										tag
hi! link typescriptCase											Tag
hi! link typescriptCastKeyword							Operator
hi! link typescriptArrowFunc								Operator
hi! link typescriptBinaryOp									Operator
hi! link typescriptAssign										Operator
hi! link typescriptTernaryOp								Operator
hi! link typescriptExceptions								Operator
hi! link typescriptTry											Operator 

hi! link typescriptParens										Tag
hi! link typescriptBraces										Tag

hi! link typescriptPrototype								Label
hi! link typescriptDefault									Label
hi! link typescriptAccessibilityModifier		SpecialChar

hi! link typescriptFuncName									PreCondit
hi! link typescriptClassName								PreCondit

hi! link typescriptFuncCall									DeepBlue

hi! link typescriptMember										PreCondit
hi! link typescriptObjectLabel							Tag
"hi! link typescriptParenExp									Macro

hi! link typescriptMethodAccessor						Statement
hi! link typescriptClassStatic							Statement
hi! link typescriptStatementKeyword					Statement

hi! link typescriptES6MapProp								Structure
hi! link typescriptRegExpProp								Structure
hi! link typescriptES6SetProp								Structure
hi! link typescriptDOMDocProp								Structure
hi! link typescriptProxyAPI									Structure
hi! link typescriptDOMEventProp							Structure
hi! link typescriptDOMNodeProp							Structure
hi! link typescriptDOMStorageProp						Structure
hi! link typescriptDOMElemAttrs							Structure
hi! link typescriptMathStaticProp						Structure
hi! link typescriptNumberStaticProp					Structure
hi! link typescriptRegExpStaticProp					Structure
hi! link typescriptSymbolStaticProp					Structure
hi! link typescriptXHRProp									Structure
hi! link typescriptRequestProp							Structure
hi! link typescriptResponseProp							Structure
hi! link typescriptBOMWindowProp						Structure
hi! link typescriptCryptoProp								Structure
hi! link typescriptFileReaderProp						Structure
hi! link typescriptURLUtilsProp							Structure

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

" template strings
hi! link typescriptTemplate									String
hi! link typescriptTemplateSB								Tag
"hi! link typescriptTemplateSubstitution			PreProc

" ts func params
hi! link typescriptCall											Tag
hi! link typescriptParamImpl								Tag
hi! link typescriptArrowFuncArg							Tag
hi! link typescriptFuncType									Tag

" ts types
hi! link typescriptFuncTypeArrow						Tag
hi! link typescriptStringLiteralType				Type
hi! link typescriptTypeReference						Type
hi! link typescriptPredefinedType						SpecialChar
hi! link typescriptObjectType								Type
hi! link typescriptTupleType								Type
hi! link typescriptTypeParameter						Type
hi! link typescriptTypeParameters						Type
hi! link typescriptTypeArguments						Type
hi! link typescriptClassTypeArguments				Type
hi! link typescriptTypeBracket							Type
hi! link typescriptProperty									Type

hi! link typescriptTypeAnnotation						Tag
hi! link typescriptOptionalMark							Tag
hi! link typescriptObjectColon							Tag

hi! link typescriptTypeBrackets							Tag
hi! link typescriptInterfaceTypeParameter		Tag
hi! link typescriptInterfaceTypeArguments		Tag
hi! link typescriptUnion										Tag
hi! link typescriptMappedIn									Tag 
hi! link typescriptTypeQuery								Tag
hi! link typescriptConstructorType					Tag
hi! link typescriptUserDefinedType					Tag
hi! link typescriptConstraint								Tag

hi! link typescriptVariableDeclaration			Normal
hi! link typescriptAliasDeclaration					Normal
hi! link typescriptInterfaceName						Normal

hi! link typescriptObjectSpread							PreProc
hi! link typescriptRestOrSpread							PreProc

hi! link typescriptDocNotation							PreProc
hi! link typescriptDocTags									PreProc
hi! link typescriptDocName									Macro
hi! link typescriptDocNamedParamType				PreCondit
hi! link typescriptDocParamName							Macro
hi! link typescriptDocParamType							PreCondit
hi! link typescriptDocParam									NonText
hi! link typescriptRef											SpecialComment 

hi! link typescriptDecorator								DeepPurple
" hi! link typescriptDefaultParam							Magenta
" hi! link typescriptFuncImpl									Magenta
" hi! link typescriptCallImpl									Magenta
hi! link typescriptIdentifierName						Magenta



"
" TSX
"
" syntax region tsxEscJs
"     \ contained
"     \ contains=@typescriptValue,@tsxComment,typescriptStatement,typescriptValue,typescriptEventTypes,typescriptPrimitive
"     \ matchgroup=typescriptBraces
"     \ start=+{+
"     \ end=+}+
"     \ extend

hi! link tsxTag															Tag
hi! link tsxCloseTag												Tag
hi! link tsxCloseString											Tag
hi! link tsxEqual														Tag

hi! link tsxTagName													Type
hi! link tsxNameSpace												Type

hi! link tsxIntrinsicTagName								Statement
hi! link tsxAttrib													Special
hi! link tsxString													String

hi! link tsxBlockComment										Comment
hi! link tsxLineComment											Comment

hi! link tsxCommentInvalid									Error

