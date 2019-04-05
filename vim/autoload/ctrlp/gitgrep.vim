" =============================================================================
" File:          autoload/ctrlp/gitgrep.vim
" Description:   Example extension for ctrlp.vim
" =============================================================================

" To load this extension into ctrlp, add this to your vimrc:
"
"     let g:ctrlp_extensions = ['gitgrep']
"
" Where 'gitgrep' is the name of the file 'gitgrep.vim'
"
" For multiple extensions:
"
"     let g:ctrlp_extensions = [
"         \ 'my_extension',
"         \ 'my_other_extension',
"         \ ]

" Load guard
if ( exists('g:loaded_ctrlp_gitgrep') && g:loaded_ctrlp_gitgrep )
	\ || v:version < 700 || &cp
	finish
endif
let g:loaded_ctrlp_gitgrep = 1

" let s:matcher_func = get(g:, 'ctrlp_match_func', {})

" echo s:matcher_func


" Add this extension's settings to g:ctrlp_ext_vars
"
" Required:
"
" + init: the name of the input function including the brackets and any
"         arguments
"
" + accept: the name of the action function (only the name)
"
" + lname & sname: the long and short names to use for the statusline
"
" + type: the matching type
"   - line : match full line
"   - path : match full line like a file or a directory path
"   - tabs : match until first tab character
"   - tabe : match until last tab character
"
" Optional:
"
" + enter: the name of the function to be called before starting ctrlp
"
" + exit: the name of the function to be called after closing ctrlp
"
" + opts: the name of the option handling function called when initialize
"
" + sort: disable sorting (enabled by default when omitted)
"
" + specinput: enable special inputs '..' and '@cd' (disabled by default)
"
let g:ctrlp_ext_vars = get(g:, 'ctrlp_ext_vars', [])
call add(g:ctrlp_ext_vars, {
	\ 'init': 'ctrlp#gitgrep#init()',
	\ 'accept': 'ctrlp#gitgrep#accept',
	\ 'exit': 'ctrlp#gitgrep#exit()',
	\ 'lname': 'git search',
	\ 'sname': 'gsu',
	\ 'type': 'line',
	\ })

let s:Type = 'grep'

function! ctrlp#gitgrep#ls_search()
	let s:Type = 'ls'
	
	" setup matcher func
	let g:ctrlp_match_func = { 'match': 'ctrlp#gitgrep#matcher' }
	call ctrlp#utils#opts()
	
	" start plugin
	call ctrlp#init(ctrlp#gitgrep#id())
endfunction

function! ctrlp#gitgrep#grep_search()
	let s:Type = 'grep'
	
	" setup matcher func
	let g:ctrlp_match_func = { 'match': 'ctrlp#gitgrep#matcher' }
	call ctrlp#utils#opts()
	
	" start plugin
	call ctrlp#init(ctrlp#gitgrep#id())
endfunction

" Provide a list of strings to search in
"
" Return: a Vim's List
"
function! ctrlp#gitgrep#init()
	return []
endfunction


" The action to perform on the selected string
"
" Arguments:
"  a:mode   the mode that has been chosen by pressing <cr> <c-v> <c-t> or <c-x>
"           the values are 'e', 'v', 't' and 'h', respectively
"  a:str    the selected string
"
function! ctrlp#gitgrep#accept(mode, str)
	let type = 'tabnew'
	if a:mode ==? 'e'
		let type = 'edit'
	elseif a:mode ==? 'v'
		let type = 'vsplit'
	elseif a:mode ==? 'h'
		let type = 'split'
	endif
	
	let cmd = type.' '.a:str

	call ctrlp#exit()
	silent execute cmd
	call histadd('cmd', cmd)
endfunction

" (optional) Do something after exiting ctrlp
function! ctrlp#gitgrep#exit()
	let g:ctrlp_match_func = {}
	call clearmatches()
endfunction

function! ctrlp#gitgrep#sort_matches(alpha, beta)
	if a:alpha ==? a:beta 
		return 0;
	endif
	
	if a:alpha =~ '^_' && a:beta =~ '^[a-zA-Z0-9]'
		return 1
	endif

	if a:beta =~ '^_' && a:alpha =~ '^[a-zA-Z0-9]'
		return -1
	endif

	if a:alpha > a:beta
		return 1
	endif
		
	return -1
endfunction 

function! ctrlp#gitgrep#gitgrep(items, str, limit, mode, ispath, crfile, regex)
	return 'RESULTS: ' . items
endfunction

function! ctrlp#gitgrep#string_break(str)
	return split(a:str, '[ ]\+')
endfunction

function! ctrlp#gitgrep#matcher(items, str, limit, mode, ispath, crfile, regex)
	let res = []
	if len(a:str)
		let matches = ctrlp#gitgrep#string_break(a:str)
		if s:Type == 'grep'
			let exp = join(matches, ' -e ')
			let res = split(system('cd '.getcwd().' && git grep --all-match -l -e '. exp), '\n')
		else
			call s:syntax(a:str)
			let res = split(system('cd '.getcwd().' && git ls-files'), '\n')
			for s in matches
				if len(matchstr(s, '^!'))
					if len(s[1:]) > 1
						let res = filter(res, '!len(matchstr(v:val, s[1:]))')
					endif
				else
					if len(s) > 1
						let res = filter(res, 'len(matchstr(v:val, s))')
					endif
				endif
			endfor
		endif
	else
		let res = split(system('cd '.getcwd().' && git ls-files'), '\n')
	endif

	" filter out current file
	if a:ispath
		let res = filter(res, 'v:val != a:crfile')
	endif

	" filter out results not in items list
	if len(a:items)
		let res = filter(res, 'index(a:items, v:val) != -1')
	else
		let res = filter(res, 'len(v:val)')
	endif

	" no results show search method
	if !len(res)
		if (s:Type == 'grep')
			let exp = join(ctrlp#gitgrep#string_break(a:str), ' -e ')
			return ['NO RESULTS: git grep --all-match -l -e '. exp ]
		else 
			return ['NO RESULTS: ' . join(ctrlp#gitgrep#string_break(a:str), '/') ]
		endif
	endif
	
	return sort(res, 'ctrlp#gitgrep#sort_matches')
endfunction

function! s:syntax(str)
	if !ctrlp#nosy()
		call clearmatches()
		let matches = ctrlp#gitgrep#string_break(a:str)
		for s in matches
			call matchadd('CtrlPMatch', '\c^.*\zs'.s.'\ze.*$')
		endfor
	en
endfunction

" Give the extension an ID
let g:ctrlp_builtins = get(g:, 'ctrlp_builtins', 0)
let s:id = g:ctrlp_builtins + len(g:ctrlp_ext_vars)

" Allow it to be called later
function! ctrlp#gitgrep#id()
	return s:id
endfunction

" vim:nofen:fdl=0:ts=2:sw=2:sts=2
