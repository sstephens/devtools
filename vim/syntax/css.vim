

syn match		cssColor			contained "#[0-9A-Fa-f]\{3\}\>" skipwhite
syn match		cssColor			contained "#[0-9A-Fa-f]\{6\}\>" skipwhite

"syn keyword cssColorProp	contained opacity

syn keyword cssFontAttr		contained proxima proximathin proximabold

"syn match		cssComment		"//.*" contains=sassTodo,@Spell
"syn cluster	cssComment		contains=sassTodo
"syn match		cssTodo				contained "TODO"

"hi def link cssTodo                    Todo
