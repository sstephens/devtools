
syn keyword		htmlArg							contained speech dismiss containedin=htmlTag
syn match			htmlAngularArg			contained "\<\(ng-class\|ng-model\|ng-submit\|ng-if\|ng-click\|ng-controller\|ng-href\)\>" containedin=htmlTag
syn match			htmlAngularArg			contained "\<\(active-when\)\>" containedin=htmlTag


hi! link htmlTag											Operator
hi! link htmlEndTag										Operator

hi! link htmlTagName									Label

hi! link htmlString										String

hi! link htmlError										Error 

hi! link htmlAngularArg								Macro

