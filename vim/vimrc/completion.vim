"
" --------------- AUTO COMPLETEION ----------------------
"
set omnifunc=syntaxcomplete#Complete																										" create completion algo
set completeopt=longest,menuone

" --- KOTLIN SYNTAX ---- 
let g:omni_syntax_group_include_kotlin = 'ktStatement,ktConditional,ktRepeat,ktOperator, ktKeyword,ktException,ktInclude,ktType,ktModifier,ktStructure,ktReservedKeyword,ktBoolean,ktConstant,ktTodo'

" --- auto completion methods ---
"let g:tabToggle = ""
function! Tab_Or_Complete()
	if (strpart(getline('.'),col('.')-2,1)=~'^\W\?$')
		return "\<Tab>"
	else
		" if g:tabToggle == "N"
		"   return Tab_Omni()
		" endif
		return Tab_Included()
	endif
endfunction

function! Tab_Omni()
	" let g:tabToggle = "O"
	return "\<C-X>\<C-O>\<C-N>"
endfunction

function! Tab_Included() 
	" let g:tabToggle = "N"
	"\<C-N>"
				"\<C-X>\<C-I>"
	return "\<C-N>\<C-R>=(pumvisible() ? '' : Tab_Omni())\<CR>"
endfunction

function! Select_First() 
	" let g:tabToggle = ""
	return "\<C-Y>"
endfunction

function! Close_Tab()
	" let g:tabToggle = ""
	return "\<Esc>"
endfunction

" -- remap tab to auto complete --
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
" inoremap <Esc> <C-R>=Close_Tab()<CR>

" force enter to always select the word instead of placing new line when
" the word was already selected
inoremap <expr> <CR> pumvisible() ? Select_First() : "\<C-G>u\<CR>"

" allows for more letters to be typed to narrow the search on 
" large result lists
inoremap <expr> <C-N> pumvisible() ? '<C-N>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-N>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

