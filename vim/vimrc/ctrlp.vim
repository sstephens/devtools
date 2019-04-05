"
" ------------------ ctrl-p plugin -----------------------
"
if g:devtools_bundle
	" -- include plugin
	Plugin 'ctrlpvim/ctrlp.vim'								" Ctrl-p vim plugin
else
	" -- include plugin
	Plug 'ctrlpvim/ctrlp.vim'								" Ctrl-p vim plugin
endif

" -- set plugin options
let g:ctrlp_working_path_mode = 'r'			" Set ctrl-p working path
let g:ctrlp_switch_buffer = 'ET'
let g:ctrlp_tabpage_position = 'ac'
let g:ctrlp_use_caching = 1
let g:ctrlp_open_multiple_files = 't'
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|node_modules)$'

" Create a command to directly call the new search type
"
" Put this in vimrc or plugin/gitgrep.vim
command! CtrlPGitGrep call ctrlp#gitgrep#grep_search()
command! CtrlPGitLs call ctrlp#gitgrep#ls_search()

" -- mappings
" let g:ctrlp_map = '<leader>p'
nmap <leader>p :CtrlP<cr>
nmap <leader>g :CtrlPGitGrep<cr>
nmap <leader>l :CtrlPGitLs<cr>


"let g:ctrlp_extensions = get(g:, 'ctrlp_extensions', [])
"let g:ctrlp_extensions = g:ctrlp_extensions + ['gitgrep']
" let g:ctrlp_match_func = { 'match': 'ctrlp#gitgrep#matcher' }
  
let g:ctrlp_prompt_mappings = {
	\ 'PrtBS()':              ['<bs>', '<c-]>'],
	\ 'PrtDelete()':          ['<del>'],
	\ 'PrtDeleteWord()':      ['<c-w>'],
	\ 'PrtClear()':           ['<c-u>'],
	\ 'PrtSelectMove("j")':   ['<c-j>', '<down>'],
	\ 'PrtSelectMove("k")':   ['<c-k>', '<up>'],
	\ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
	\ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
	\ 'PrtSelectMove("u")':   ['<PageUp>', '<kPageUp>'],
	\ 'PrtSelectMove("d")':   ['<PageDown>', '<kPageDown>'],
	\ 'PrtHistory(-1)':       ['<c-n>'],
	\ 'PrtHistory(1)':        ['<c-p>'],
	\ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
	\ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
	\ 'AcceptSelection("e")': ['<c-t>'],
	\ 'AcceptSelection("v")': ['<c-v>', '<RightMouse>'],
	\ 'ToggleFocus()':        ['<s-tab>'],
	\ 'ToggleRegex()':        ['<c-r>'],
	\ 'ToggleByFname()':      ['<c-d>'],
	\ 'ToggleType(1)':        ['<c-f>', '<c-up>'],
	\ 'ToggleType(-1)':       ['<c-b>', '<c-down>'],
	\ 'PrtExpandDir()':       ['<tab>'],
	\ 'PrtInsert("c")':       ['<MiddleMouse>', '<insert>'],
	\ 'PrtInsert()':          ['<c-\>'],
	\ 'PrtCurStart()':        ['<c-a>'],
	\ 'PrtCurEnd()':          ['<c-e>'],
	\ 'PrtCurLeft()':         ['<c-h>', '<left>', '<c-^>'],
	\ 'PrtCurRight()':        ['<c-l>', '<right>'],
	\ 'PrtClearCache()':      ['<F5>'],
	\ 'PrtDeleteEnt()':       ['<F7>'],
	\ 'CreateNewFile()':      ['<c-y>'],
	\ 'MarkToOpen()':         ['<c-z>'],
	\ 'OpenMulti()':          ['<c-o>'],
	\ 'PrtExit()':            ['<esc>', '<c-c>', '<c-g>'],
\ }

