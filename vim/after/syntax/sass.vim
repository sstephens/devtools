" Vim syntax file
" Language:	SASS
" Filenames:	*.sass,*.scss
" Last Change:	2010 Jul 26
"
"runtime! $VIM/vimfiles/syntax/sass.vim

syn match		sassComment "//.*" contains=sassTodo,@Spell
syn region	sassComment start="/\*" end="\*/" contains=sassTodo,@Spell

let b:current_syntax = "scss"

" vim:set sw=2:
