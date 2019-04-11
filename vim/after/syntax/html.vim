
syn keyword		htmlArg							contained speech dismiss containedin=htmlTag
syn match			htmlAngularArg			contained "\<\(ng-class\|ng-model\|ng-submit\|ng-if\|ng-click\|ng-controller\|ng-href\)\>" containedin=htmlTag
syn match			htmlAngularArg			contained "\<\(ng-disabled\|ng-focus\|ng-style\|ng-repeat\)\>" containedin=htmlTag
syn match			htmlAngularArg			contained "\<\(on-change\|on-click\|on-select\)\>" containedin=htmlTag
syn match			htmlAngularArg			contained "\<\(active-when\|dynamic\|options\|emojify\)\>" containedin=htmlTag


hi! link htmlTag											Tag
hi! link htmlEndTag										Tag

hi! link htmlTagName									PreProc
hi! link htmlString										String
hi! link htmlError										Error 
hi! link htmlAngularArg								PreCondit

