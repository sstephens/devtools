"
" --------------- AUTO COMPLETEION ----------------------
"

" -- include plugin
Plugin 'ervandew/supertab'

" -- set options
let g:SuperTabDefaultCompletionType = "<c-n>"																						" set completion key <tab>
let g:SuperTabCompleteCase = 'match'																										" set completion type to match
let g:SuperTabNoCompleteAfter = ['^', '\s', '"', "'", ':', ',', '(', ')', '{', '}']			" set chars that should not be completed after
let g:SuperTabContextTextOmniPrecedence = ['&completefunc', '&omnifunc']								" set completion source list


" -------------------------------------------------------------- 
"  old completion
"  does not use supertab plugin
" -------------------------------------------------------------
"set omnifunc=syntaxcomplete#Complete																										" create completion algo

"function! SuperTab()																																		" completion method
"	if (strpart(getline('.'),col('.')-2,1)=~'^\W\?$')
"		return \"\<Tab>"
"	else
"		return \"\<C-n>"
"	endif
"endfunction

"imap <Tab> <C-R>=SuperTab()<CR>																												" map completion key
